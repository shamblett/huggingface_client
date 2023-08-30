//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V2endpointApi {
  V2endpointApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new endpoint
  ///
  /// Create a new endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [Endpoint] endpoint (required):
  Future<Response> _createEndpointWithHttpInfo(
    String endpointScope,
    Endpoint endpoint,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/v2/endpoint/{namespace}'.replaceAll('{namespace}', endpointScope);

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
    final response = await _createEndpointWithHttpInfo(
      apiClient.endpointScope,
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
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> _deleteEndpointWithHttpInfo(
    endpointScope,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

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
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Object?> deleteEndpoint(
    String name,
  ) async {
    final response = await _deleteEndpointWithHttpInfo(
      apiClient.endpointScope,
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
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> _getEndpointWithHttpInfo(
    endpointScope,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

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
    final response = await _getEndpointWithHttpInfo(
      apiClient.endpointScope,
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
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [int] from:
  ///   Stream logs from this timestamp
  ///
  /// * [int] to:
  ///   Stream logs until this timestamp
  ///
  /// * [int] tail:
  ///   Tail at most this number of lines
  Future<Response> _getEndpointLogsWithHttpInfo(
    endpointScope,
    String name, {
    int? from,
    int? to,
    int? tail,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}/logs'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (tail != null) {
      queryParams.addAll(_queryParams('', 'tail', tail));
    }

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
  ///
  /// * [int] from:
  ///   Stream logs from this timestamp
  ///
  /// * [int] to:
  ///   Stream logs until this timestamp
  ///
  /// * [int] tail:
  ///   Tail at most this number of lines
  Future<String?> getEndpointLogs(
    String name, {
    int? from,
    int? to,
    int? tail,
  }) async {
    final response = await _getEndpointLogsWithHttpInfo(
      apiClient.endpointScope,
      name,
      from: from,
      to: to,
      tail: tail,
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
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [String] metric (required):
  ///   Metrics name
  Future<Response> _getEndpointMetricWithHttpInfo(
    endpointScope,
    String name,
    String metric,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}/metrics/{metric}'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name)
        .replaceAll('{metric}', metric);

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
  /// * [String] metric (required):
  ///   Metrics name
  Future<void> getEndpointMetric(
    String name,
    String metric,
  ) async {
    final response = await _getEndpointMetricWithHttpInfo(
      apiClient.endpointScope,
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
  ///
  /// Parameters:
  ///
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  Future<Response> _listEndpointWithHttpInfo(
    endpointScope,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}'
        .replaceAll('{namespace}', endpointScope.toString());

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
  ///
  Future<EndpointWithStatusList?> listEndpoint() async {
    final response = await _listEndpointWithHttpInfo(
      apiClient.endpointScope,
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
        'EndpointWithStatusList',
      ) as EndpointWithStatusList;
    }
    return null;
  }

  /// Pause endpoint
  ///
  /// Pause endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> _pauseEndpointWithHttpInfo(
    endpointScope,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}/pause'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

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

  /// Pause endpoint
  ///
  /// Pause endpoint
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<EndpointWithStatus?> pauseEndpoint(
    String name,
  ) async {
    final response = await _pauseEndpointWithHttpInfo(
      apiClient.endpointScope,
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

  /// Resume endpoint
  ///
  /// Resume endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<Response> _resumeEndpointWithHttpInfo(
    endpointScope,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}/resume'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

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

  /// Resume endpoint
  ///
  /// Resume endpoint
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Endpoint name
  Future<EndpointWithStatus?> resumeEndpoint(
    String name,
  ) async {
    final response = await _resumeEndpointWithHttpInfo(
      apiClient.endpointScope,
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

  /// Update an endpoint
  ///
  /// Update an endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// *[endpointScope] (required):
  ///   Either your user name or one of your organization name
  ///
  /// * [String] name (required):
  ///   Endpoint name
  ///
  /// * [EndpointUpdate] endpointUpdate (required):
  Future<Response> _updateEndpointWithHttpInfo(
    endpointScope,
    String name,
    EndpointUpdate endpointUpdate,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v2/endpoint/{namespace}/{name}'
        .replaceAll('{namespace}', endpointScope.toString())
        .replaceAll('{name}', name);

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
    final response = await _updateEndpointWithHttpInfo(
      apiClient.endpointScope,
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
