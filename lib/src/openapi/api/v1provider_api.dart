//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1providerApi {
  V1providerApi([EndpointApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final EndpointApiClient apiClient;

  /// List compute resources available for this provider region\\
  ///
  /// List compute resources available for this provider region\\
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendor (required):
  ///   Provider vendor
  ///
  /// * [String] region (required):
  ///   Vendor region
  Future<Response> listComputesWithHttpInfo(
    String vendor,
    String region,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/provider/{vendor}/region/{region}/compute'
        .replaceAll('{vendor}', vendor)
        .replaceAll('{region}', region);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List compute resources available for this provider region\\
  ///
  /// List compute resources available for this provider region\\
  ///
  /// Parameters:
  ///
  /// * [String] vendor (required):
  ///   Provider vendor
  ///
  /// * [String] region (required):
  ///   Vendor region
  Future<ComputeList?> listComputes(
    String vendor,
    String region,
  ) async {
    final response = await listComputesWithHttpInfo(
      vendor,
      region,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ComputeList',
      ) as ComputeList;
    }
    return null;
  }

  /// List vendor regions
  ///
  /// List vendor regions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] vendor (required):
  ///   Provider vendor
  Future<Response> listRegionsWithHttpInfo(
    String vendor,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/provider/{vendor}/region'.replaceAll('{vendor}', vendor);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List vendor regions
  ///
  /// List vendor regions
  ///
  /// Parameters:
  ///
  /// * [String] vendor (required):
  ///   Provider vendor
  Future<RegionList?> listRegions(
    String vendor,
  ) async {
    final response = await listRegionsWithHttpInfo(
      vendor,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'RegionList',
      ) as RegionList;
    }
    return null;
  }

  /// List vendors
  ///
  /// List vendors
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listVendorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/provider';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List vendors
  ///
  /// List vendors
  Future<VendorList?> listVendors() async {
    final response = await listVendorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'VendorList',
      ) as VendorList;
    }
    return null;
  }
}
