# openapi.api.V2endpointApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEndpoint**](V2endpointApi.md#createendpoint) | **POST** /v2/endpoint/{namespace} | Create a new endpoint
[**deleteEndpoint**](V2endpointApi.md#deleteendpoint) | **DELETE** /v2/endpoint/{namespace}/{name} | Delete an endpoint
[**getEndpoint**](V2endpointApi.md#getendpoint) | **GET** /v2/endpoint/{namespace}/{name} | Get endpoint information
[**getEndpointLogs**](V2endpointApi.md#getendpointlogs) | **GET** /v2/endpoint/{namespace}/{name}/logs | Endpoint replicas logs
[**getEndpointMetric**](V2endpointApi.md#getendpointmetric) | **POST** /v2/endpoint/{namespace}/{name}/metrics/{metric} | Get endpoint metric
[**listEndpoint**](V2endpointApi.md#listendpoint) | **GET** /v2/endpoint/{namespace} | List endpoints
[**pauseEndpoint**](V2endpointApi.md#pauseendpoint) | **POST** /v2/endpoint/{namespace}/{name}/pause | Pause endpoint
[**resumeEndpoint**](V2endpointApi.md#resumeendpoint) | **POST** /v2/endpoint/{namespace}/{name}/resume | Resume endpoint
[**updateEndpoint**](V2endpointApi.md#updateendpoint) | **PUT** /v2/endpoint/{namespace}/{name} | Update an endpoint


# **createEndpoint**
> EndpointWithStatus createEndpoint(UNKNOWN_PARAMETER_NAME, endpoint)

Create a new endpoint

Create a new endpoint

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final endpoint = Endpoint(); // Endpoint | 

try {
    final result = api_instance.createEndpoint(UNKNOWN_PARAMETER_NAME, endpoint);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->createEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **endpoint** | [**Endpoint**](Endpoint.md)|  | 

### Return type

[**EndpointWithStatus**](EndpointWithStatus.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEndpoint**
> Object deleteEndpoint(UNKNOWN_PARAMETER_NAME, name)

Delete an endpoint

Delete an endpoint

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.deleteEndpoint(UNKNOWN_PARAMETER_NAME, name);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->deleteEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 

### Return type

[**Object**](Object.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpoint**
> EndpointWithStatus getEndpoint(UNKNOWN_PARAMETER_NAME, name)

Get endpoint information

Get endpoint information

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.getEndpoint(UNKNOWN_PARAMETER_NAME, name);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->getEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 

### Return type

[**EndpointWithStatus**](EndpointWithStatus.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointLogs**
> String getEndpointLogs(UNKNOWN_PARAMETER_NAME, name, from, to, tail)

Endpoint replicas logs

Endpoint replicas logs

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name
final from = 789; // int | Stream logs from this timestamp
final to = 789; // int | Stream logs until this timestamp
final tail = 789; // int | Tail at most this number of lines

try {
    final result = api_instance.getEndpointLogs(UNKNOWN_PARAMETER_NAME, name, from, to, tail);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->getEndpointLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 
 **from** | **int**| Stream logs from this timestamp | [optional] 
 **to** | **int**| Stream logs until this timestamp | [optional] 
 **tail** | **int**| Tail at most this number of lines | [optional] 

### Return type

**String**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointMetric**
> getEndpointMetric(UNKNOWN_PARAMETER_NAME, name, metric)

Get endpoint metric

Get endpoint metric

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name
final metric = request-count; // String | Metrics name

try {
    api_instance.getEndpointMetric(UNKNOWN_PARAMETER_NAME, name, metric);
} catch (e) {
    print('Exception when calling V2endpointApi->getEndpointMetric: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 
 **metric** | **String**| Metrics name | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEndpoint**
> EndpointWithStatusList listEndpoint(UNKNOWN_PARAMETER_NAME)

List endpoints

List endpoints

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name

try {
    final result = api_instance.listEndpoint(UNKNOWN_PARAMETER_NAME);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->listEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 

### Return type

[**EndpointWithStatusList**](EndpointWithStatusList.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pauseEndpoint**
> EndpointWithStatus pauseEndpoint(UNKNOWN_PARAMETER_NAME, name)

Pause endpoint

Pause endpoint

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.pauseEndpoint(UNKNOWN_PARAMETER_NAME, name);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->pauseEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 

### Return type

[**EndpointWithStatus**](EndpointWithStatus.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resumeEndpoint**
> EndpointWithStatus resumeEndpoint(UNKNOWN_PARAMETER_NAME, name)

Resume endpoint

Resume endpoint

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.resumeEndpoint(UNKNOWN_PARAMETER_NAME, name);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->resumeEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 

### Return type

[**EndpointWithStatus**](EndpointWithStatus.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEndpoint**
> EndpointWithStatus updateEndpoint(UNKNOWN_PARAMETER_NAME, name, endpointUpdate)

Update an endpoint

Update an endpoint

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V2endpointApi();
final UNKNOWN_PARAMETER_NAME = johnDoe; //  | Either your user name or one of your organization name
final name = my-endpoint; // String | Endpoint name
final endpointUpdate = EndpointUpdate(); // EndpointUpdate | 

try {
    final result = api_instance.updateEndpoint(UNKNOWN_PARAMETER_NAME, name, endpointUpdate);
    print(result);
} catch (e) {
    print('Exception when calling V2endpointApi->updateEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UNKNOWN_PARAMETER_NAME** | [****](.md)| Either your user name or one of your organization name | 
 **name** | **String**| Endpoint name | 
 **endpointUpdate** | [**EndpointUpdate**](EndpointUpdate.md)|  | 

### Return type

[**EndpointWithStatus**](EndpointWithStatus.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

