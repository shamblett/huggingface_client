/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class InferenceApi {
  InferenceApi([InferenceApiClient? apiClient])
      : apiClient = apiClient ?? defaultInferenceApiClient;

  final InferenceApiClient apiClient;

  ///
  /// query
  ///
  /// Simple inference query
  /// Note: This method returns the HTTP [Response].
  ///
  /// [queryString]
  /// The inference query string
  ///
  /// [model]
  /// The model to perform inference on
  Future<Response> queryWithHttpInfo(String queryString, String model) async {
    final path = '/$model';

    Object? postBody;
    postBody = json.encode(queryString);

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  ///
  /// query
  ///
  /// Simple inference query
  ///
  /// [queryString]
  /// The inference query string
  ///
  /// [model]
  /// The model to perform inference on
  Future<String?> query(
      {required String queryString, required String model}) async {
    final response = await queryWithHttpInfo(queryString, model);

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'QueryStandard')
          as String);
    }
    return null;
  }

  /// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
  /// content type. Otherwise, returns the decoded body as decoded by dart:http package.
  Future<String> _decodeBodyBytes(Response response) async {
    final contentType = response.headers['content-type'];
    return contentType != null &&
            contentType.toLowerCase().startsWith('application/json')
        ? response.bodyBytes.isEmpty
            ? ''
            : utf8.decode(response.bodyBytes)
        : response.body;
  }
}
