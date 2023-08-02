# openapi.api.V1providerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listComputes**](V1providerApi.md#listcomputes) | **GET** /provider/{vendor}/region/{region}/compute | List compute resources available for this provider region\\
[**listRegions**](V1providerApi.md#listregions) | **GET** /provider/{vendor}/region | List vendor regions
[**listVendors**](V1providerApi.md#listvendors) | **GET** /provider | List vendors


# **listComputes**
> ComputeList listComputes(vendor, region)

List compute resources available for this provider region\\

List compute resources available for this provider region\\

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = V1providerApi();
final vendor = aws; // String | Provider vendor
final region = us-east-1; // String | Vendor region

try {
    final result = api_instance.listComputes(vendor, region);
    print(result);
} catch (e) {
    print('Exception when calling V1providerApi->listComputes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | **String**| Provider vendor | 
 **region** | **String**| Vendor region | 

### Return type

[**ComputeList**](ComputeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRegions**
> RegionList listRegions(vendor)

List vendor regions

List vendor regions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = V1providerApi();
final vendor = aws; // String | Provider vendor

try {
    final result = api_instance.listRegions(vendor);
    print(result);
} catch (e) {
    print('Exception when calling V1providerApi->listRegions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendor** | **String**| Provider vendor | 

### Return type

[**RegionList**](RegionList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVendors**
> VendorList listVendors()

List vendors

List vendors

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = V1providerApi();

try {
    final result = api_instance.listVendors();
    print(result);
} catch (e) {
    print('Exception when calling V1providerApi->listVendors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VendorList**](VendorList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

