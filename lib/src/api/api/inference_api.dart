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
  /// _queryWithHttpInfo
  ///
  /// Simple inference query
  /// Note: This method returns the HTTP [Response].
  ///
  Future<Response> _queryWithHttpInfo(String queryString, String model) async {
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
  /// Simple inference query.
  ///
  /// [queryString]
  /// The inference query string
  ///
  /// [model]
  /// The model to perform inference on
  ///
  Future<String?> query(
      {required String queryString, required String model}) async {
    final response = await _queryWithHttpInfo(queryString, model);

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

  ///
  /// _queryNLPFillMaskWithHttpInfo
  /// Note: This method returns the HTTP [Response].
  ///
  Future<Response> _queryNLPFillMaskWithHttpInfo(
      ApiQueryNLPFillMask taskParameters, String model) async {
    final path = '/$model';
    Object? postBody;
    postBody = taskParameters.toJson();

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
  /// queryNLPFillMask
  ///
  /// NLP query for a fill mask task.
  /// Tries to fill in a hole with a missing word (token to be precise).
  /// That’s the base task for BERT models.
  ///
  /// [taskParameters]
  /// Parameter set for the fill mask operation
  ///
  /// [model
  /// The model to use for the task
  ///
  Future<List<ApiResponseNLPFillMask?>?> queryNLPFillMask(
      {required ApiQueryNLPFillMask taskParameters,
      required String model}) async {
    final response = await _queryNLPFillMaskWithHttpInfo(taskParameters, model);

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
          responseBody, 'List<QueryNLPFillMaskTask>'));
    }
    return null;
  }

  ///
  /// _queryNLPSummarisationWithHttpInfo
  /// Note: This method returns the HTTP [Response].
  ///
  Future<Response> _queryNLPSummarisationWithHttpInfo(
      ApiQueryNLPSummarisation taskParameters, String model) async {
    final path = '/$model';
    Object? postBody;
    postBody = taskParameters.toJson();

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
  /// queryNLPSummarisation
  ///
  /// NLP query for the text summarisation task.
  /// This task is well known to summarize longer text into shorter text. Be careful,
  /// some models have a maximum length of input. That means that the summary cannot handle
  /// full books for instance. Be careful when choosing your model.
  ///
  /// [taskParameters]
  /// Parameter set for the fill mask operation
  ///
  /// [model
  /// The model to use for the task
  ///
  Future<List<ApiResponseNLPSummarisation?>?> queryNLPSummarisation(
      {required ApiQueryNLPSummarisation taskParameters,
      required String model}) async {
    final response =
        await _queryNLPSummarisationWithHttpInfo(taskParameters, model);

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
          responseBody, 'List<QueryNLPSummarisationTask>'));
    }
    return null;
  }

  ///
  /// _queryNLPQAWithHttpInfo
  /// Note: This method returns the HTTP [Response].
  ///
  Future<Response> _queryNLPQAWithHttpInfo(
      ApiQueryNLPQA taskParameters, String model) async {
    final path = '/$model';
    Object? postBody;
    postBody = taskParameters.toJson();

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
  /// queryNLPQA
  ///
  /// NLP query for the question answering task.
  /// Want to have a nice know-it-all bot that can answer any question?.
  ///
  /// [taskParameters]
  /// Parameter set for the question answer operation
  ///
  /// [model
  /// The model to use for the task
  ///
  Future<ApiResponseNLPQA?> queryNLPQA(
      {required ApiQueryNLPQA taskParameters, required String model}) async {
    final response = await _queryNLPQAWithHttpInfo(taskParameters, model);

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'QueryNLPQATask'));
    }
    return null;
  }

  ///
  /// _queryNLPTableQAWithHttpInfo
  /// Note: This method returns the HTTP [Response].
  ///
  Future<Response> _queryNLPTableQAWithHttpInfo(
      ApiQueryNLPTableQA taskParameters, String model) async {
    final path = '/$model';
    Object? postBody;
    postBody = taskParameters.toJson();

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
  /// queryNLPQA
  ///
  /// NLP query for the table question answering task.
  /// Don’t know SQL? Don’t want to dive into a large spreadsheet? Ask questions in
  /// plain english!
  ///
  /// [taskParameters]
  /// Parameter set for the question answer operation
  ///
  /// [model
  /// The model to use for the task
  ///
  Future<List<ApiResponseNLPTableQA?>?> queryNLPTableQA(
      {required ApiQueryNLPTableQA taskParameters,
      required String model}) async {
    final response = await _queryNLPTableQAWithHttpInfo(taskParameters, model);

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return [
        (await apiClient.deserializeAsync(
            responseBody, 'List<QueryNLPTableQATask>'))
      ];
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
