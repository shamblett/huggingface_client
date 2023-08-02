# openapi.model.Compute

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accelerator** | [**Accelerator**](Accelerator.md) |  | 
**architecture** | **String** | Compute accelerator architecture | 
**gpuMemoryGb** | **int** | Amount of memory per GPU in GB | [optional] 
**instanceSize** | **String** | Compute accelerator instance size | 
**instanceType** | **String** | Compute accelerator instance type | 
**memoryGb** | **int** | Amount of RAM which can be requested per endpoint replica | 
**numAccelerators** | **int** | Number of accelerator units which can be requested per endpoint replica | 
**numCpus** | **int** | Number of CPUs which can be requested per endpoint replica | [optional] 
**pricePerHour** | **double** | Price per hour in dollar of an endpoint replica | 
**status** | [**Status**](Status.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


