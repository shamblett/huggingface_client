# openapi.api.V2providerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listVendors**](V2providerApi.md#listvendors) | **GET** /v2/provider | List vendors, regions and compute resources available


# **listVendors**
> VendorList listVendors()

List vendors, regions and compute resources available

List vendors, regions and compute resources available

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = V2providerApi();

try {
    final result = api_instance.listVendors();
    print(result);
} catch (e) {
    print('Exception when calling V2providerApi->listVendors: $e\n');
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

