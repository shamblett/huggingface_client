//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointApiClient {
  EndpointApiClient(
      {this.basePath = 'http://localhost',
      this.authentication,
      required this.endpointScope});

  final String basePath;
  final Authentication? authentication;
  final String endpointScope;

  var client = Client();
  final _defaultHeaderMap = <String, String>{};

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Accelerator':
          return AcceleratorTypeTransformer().decode(value);
        case 'ApiResponseError':
          return ApiResponseError.fromJson(value);
        case 'Compute':
          return Compute.fromJson(value);
        case 'ComputeList':
          return ComputeList.fromJson(value);
        case 'Endpoint':
          return Endpoint.fromJson(value);
        case 'EndpointAccelerator':
          return EndpointAcceleratorTypeTransformer().decode(value);
        case 'EndpointAccount':
          return EndpointAccount.fromJson(value);
        case 'EndpointCompute':
          return EndpointCompute.fromJson(value);
        case 'EndpointComputeUpdate':
          return EndpointComputeUpdate.fromJson(value);
        case 'EndpointFramework':
          return EndpointFrameworkTypeTransformer().decode(value);
        case 'EndpointImageCredentials':
          return EndpointImageCredentials.fromJson(value);
        case 'EndpointModel':
          return EndpointModel.fromJson(value);
        case 'EndpointModelImage':
          return EndpointModelImage.fromJson(value);
        case 'EndpointModelImageOneOf':
          return EndpointModelImageOneOf.fromJson(value);
        case 'EndpointModelImageOneOf1':
          return EndpointModelImageOneOf1.fromJson(value);
        case 'EndpointModelImageOneOf1Custom':
          return EndpointModelImageOneOf1Custom.fromJson(value);
        case 'EndpointModelImageUpdate':
          return EndpointModelImageUpdate.fromJson(value);
        case 'EndpointModelImageUpdateOneOf':
          return EndpointModelImageUpdateOneOf.fromJson(value);
        case 'EndpointModelImageUpdateOneOfCustom':
          return EndpointModelImageUpdateOneOfCustom.fromJson(value);
        case 'EndpointModelUpdate':
          return EndpointModelUpdate.fromJson(value);
        case 'EndpointProvider':
          return EndpointProvider.fromJson(value);
        case 'EndpointScaling':
          return EndpointScaling.fromJson(value);
        case 'EndpointScalingUpdate':
          return EndpointScalingUpdate.fromJson(value);
        case 'EndpointState':
          return EndpointStateTypeTransformer().decode(value);
        case 'EndpointStatus':
          return EndpointStatus.fromJson(value);
        case 'EndpointStatusPrivate':
          return EndpointStatusPrivate.fromJson(value);
        case 'EndpointTask':
          return EndpointTaskTypeTransformer().decode(value);
        case 'EndpointType':
          return EndpointTypeTypeTransformer().decode(value);
        case 'EndpointUpdate':
          return EndpointUpdate.fromJson(value);
        case 'EndpointWithStatus':
          return EndpointWithStatus.fromJson(value);
        case 'EndpointWithStatusList':
          return EndpointWithStatusList.fromJson(value);
        case 'MetricName':
          return MetricNameTypeTransformer().decode(value);
        case 'MetricsParams':
          return MetricsParams.fromJson(value);
        case 'Region':
          return Region.fromJson(value);
        case 'RegionList':
          return RegionList.fromJson(value);
        case 'Status':
          return StatusTypeTransformer().decode(value);
        case 'Vendor':
          return Vendor.fromJson(value);
        case 'VendorList':
          return VendorList.fromJson(value);
        case 'Vendors':
          return Vendors.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : EndpointApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
