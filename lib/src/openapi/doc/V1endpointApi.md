# openapi.api.V1endpointApi

## Load the API package
```dart
import 'package:huggingface_client/huggingface_client.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEndpoint**](V1endpointApi.md#createendpoint) | **POST** /endpoint | Create a new endpoint
[**deleteEndpoint**](V1endpointApi.md#deleteendpoint) | **DELETE** /endpoint/{name} | Delete an endpoint
[**getEndpoint**](V1endpointApi.md#getendpoint) | **GET** /endpoint/{name} | Get endpoint information
[**getEndpointLogs**](V1endpointApi.md#getendpointlogs) | **GET** /endpoint/{name}/logs | Endpoint replicas logs
[**getEndpointMetric**](V1endpointApi.md#getendpointmetric) | **POST** /endpoint/{name}/metrics/{metric} | Get endpoint metric
[**listEndpoint**](V1endpointApi.md#listendpoint) | **GET** /endpoint | List endpoints
[**updateEndpoint**](V1endpointApi.md#updateendpoint) | **PUT** /endpoint/{name} | Update an endpoint


# **createEndpoint**
> EndpointWithStatus createEndpoint(endpoint)

Create a new endpoint

Create a new endpoint

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final endpoint = Endpoint(); // Endpoint | 

try {
    final result = api_instance.createEndpoint(endpoint);
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->createEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> Object deleteEndpoint(name)

Delete an endpoint

Delete an endpoint

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.deleteEndpoint(name);
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->deleteEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> EndpointWithStatus getEndpoint(name)

Get endpoint information

Get endpoint information

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.getEndpoint(name);
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->getEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> String getEndpointLogs(name)

Endpoint replicas logs

Endpoint replicas logs

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final name = my-endpoint; // String | Endpoint name

try {
    final result = api_instance.getEndpointLogs(name);
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->getEndpointLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Endpoint name | 

### Return type

**String**

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpointMetric**
> getEndpointMetric(name, metric)

Get endpoint metric

Get endpoint metric

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final name = my-endpoint; // String | Endpoint name
final metric = ; // MetricName | 

try {
    api_instance.getEndpointMetric(name, metric);
} catch (e) {
    print('Exception when calling V1endpointApi->getEndpointMetric: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Endpoint name | 
 **metric** | [**MetricName**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEndpoint**
> EndpointWithStatusList listEndpoint()

List endpoints

List endpoints

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();

try {
    final result = api_instance.listEndpoint();
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->listEndpoint: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EndpointWithStatusList**](EndpointWithStatusList.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEndpoint**
> EndpointWithStatus updateEndpoint(name, endpointUpdate)

Update an endpoint

Update an endpoint

### Example
```dart
import 'package:huggingface_client/huggingface_client.dart';
// TODO Configure HTTP Bearer authorization: token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = V1endpointApi();
final name = my-endpoint; // String | Endpoint name
final endpointUpdate = EndpointUpdate(); // EndpointUpdate | 

try {
    final result = api_instance.updateEndpoint(name, endpointUpdate);
    print(result);
} catch (e) {
    print('Exception when calling V1endpointApi->updateEndpoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

