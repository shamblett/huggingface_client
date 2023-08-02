//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1endpointApi {
  V1endpointApi([EndpointApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final EndpointApiClient apiClient;

  /// Create a new endpoint
  ///
  /// Create a new endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Endpoint] endpoint (required):
  Future<Response> createEndpointWithHttpInfo(
    Endpoint endpoint,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint';

    // ignore: prefer_final_locals
    Object? postBody = endpoint;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

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

  /// Create a new endpoint
  ///
  /// Create a new endpoint
  ///
  /// Parameters:
  ///
  /// * [Endpoint] endpoint (required):
  Future<EndpointWithStatus?> createEndpoint(
    Endpoint endpoint,
  ) async {
    final response = await createEndpointWithHttpInfo(
      endpoint,
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
        'EndpointWithStatus',
      ) as EndpointWithStatus;
    }
    return null;
  }

  /// Delete an endpoint
  ///
  /// Delete an endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> deleteEndpointWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an endpoint
  ///
  /// Delete an endpoint
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Object?> deleteEndpoint(
    String name,
  ) async {
    final response = await deleteEndpointWithHttpInfo(
      name,
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get endpoint information
  ///
  /// Get endpoint information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> getEndpointWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint/{name}'.replaceAll('{name}', name);

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

  /// Get endpoint information
  ///
  /// Get endpoint information
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<EndpointWithStatus?> getEndpoint(
    String name,
  ) async {
    final response = await getEndpointWithHttpInfo(
      name,
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
        'EndpointWithStatus',
      ) as EndpointWithStatus;
    }
    return null;
  }

  /// Endpoint replicas logs
  ///
  /// Endpoint replicas logs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> getEndpointLogsWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint/{name}/logs'.replaceAll('{name}', name);

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

  /// Endpoint replicas logs
  ///
  /// Endpoint replicas logs
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<String?> getEndpointLogs(
    String name,
  ) async {
    final response = await getEndpointLogsWithHttpInfo(
      name,
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
        'String',
      ) as String;
    }
    return null;
  }

  /// Get endpoint metric
  ///
  /// Get endpoint metric
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [MetricName] metric (required):
  Future<Response> getEndpointMetricWithHttpInfo(
    String name,
    MetricName metric,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint/{name}/metrics/{metric}'
        .replaceAll('{name}', name)
        .replaceAll('{metric}', metric.toString());

    // ignore: prefer_final_locals
    Object? postBody;

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

  /// Get endpoint metric
  ///
  /// Get endpoint metric
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [MetricName] metric (required):
  Future<void> getEndpointMetric(
    String name,
    MetricName metric,
  ) async {
    final response = await getEndpointMetricWithHttpInfo(
      name,
      metric,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List endpoints
  ///
  /// List endpoints
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEndpointWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint';

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

  /// List endpoints
  ///
  /// List endpoints
  Future<EndpointWithStatusList?> listEndpoint() async {
    final response = await listEndpointWithHttpInfo();
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
        'EndpointWithStatusList',
      ) as EndpointWithStatusList;
    }
    return null;
  }

  /// Update an endpoint
  ///
  /// Update an endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [EndpointUpdate] endpointUpdate (required):
  Future<Response> updateEndpointWithHttpInfo(
    String name,
    EndpointUpdate endpointUpdate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/endpoint/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = endpointUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an endpoint
  ///
  /// Update an endpoint
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [EndpointUpdate] endpointUpdate (required):
  Future<EndpointWithStatus?> updateEndpoint(
    String name,
    EndpointUpdate endpointUpdate,
  ) async {
    final response = await updateEndpointWithHttpInfo(
      name,
      endpointUpdate,
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
        'EndpointWithStatus',
      ) as EndpointWithStatus;
    }
    return null;
  }
}
