# openapi.model.EndpointStatus

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | Date of creation | 
**createdBy** | [**EndpointAccount**](EndpointAccount.md) |  | 
**message** | **String** | Information about the state of the endpoint | 
**private** | [**EndpointStatusPrivate**](EndpointStatusPrivate.md) |  | [optional] 
**readyReplica** | **int** | Number of replica ready to handle requests | 
**state** | [**EndpointState**](EndpointState.md) |  | 
**targetReplica** | **int** | Target number of replica to handle requests | 
**updatedAt** | [**DateTime**](DateTime.md) | Date of last update | 
**updatedBy** | [**EndpointAccount**](EndpointAccount.md) |  | 
**url** | **String** | URL the endpoint is reachable at | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


