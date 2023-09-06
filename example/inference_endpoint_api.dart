/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'package:huggingface_client/huggingface_client.dart';
import 'api_key.dart';

/// Examples of how to use the Hugging Face Inference endpoint API to perform
/// inference endpoint tasks.

void main() async {
  // Get an inference endpoint API client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getEndpointClient(
      endpointApiKey, 'shamblett', HuggingFaceClient.endpointBasePath);

  // Get an instance of the inference endpoint API using our client
  final apiInstance = EndpointApi(client);

  //
  // List endpoints
  //
  print('');
  print('*** Endpoint API list endpoints ***');
  print('');
  try {
    final result = await apiInstance.listEndpoint();
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API List Endpoints: $e - exiting');
    return;
  }

  //
  // Create an endpoint
  //
  print('');
  print('*** Endpoint API create endpoint ***');
  print('');
  try {
    final compute = EndpointCompute(
        accelerator: EndpointAccelerator.cpu,
        instanceSize: 'large',
        instanceType: 'c6i',
        scaling: EndpointScaling(maxReplica: 8, minReplica: 2));
    final endpointModelImage = EndpointModelImage(huggingface: Object());
    final model = EndpointModel(
        framework: EndpointFramework.custom,
        image: endpointModelImage,
        repository: 'gpt2',
        revision: 'REV 1',
        task: EndpointTask.textClassification);
    final endpoint = Endpoint(
        compute: compute,
        model: model,
        name: 'SJH-Test',
        provider: EndpointProvider(region: 'us-east-1', vendor: 'aws'),
        type: EndpointType.public);
    final result = await apiInstance.createEndpoint(endpoint);
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Create Endpoint: $e - exiting');
    return;
  }

  //
  // List endpoints
  //
  print('');
  print('*** Endpoint API list endpoints ***');
  print('');
  try {
    final result = await apiInstance.listEndpoint();
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API List Endpoints: $e - exiting');
    return;
  }

  return;

  //
  // Get endpoint information
  //
  print('');
  print('*** Endpoint API get endpoint information ***');
  print('');
  try {
    final result = await apiInstance.getEndpoint('SJH Test');
    print(result);
  } catch (e) {
    print(
        'Exception when calling Endpoint API GetEndpoint Information: $e - exiting');
    return;
  }

  //
  // Update  an endpoint
  //
  print('');
  print('*** Endpoint API update endpoint ***');
  print('');
  try {
    final compute = EndpointComputeUpdate(instanceType: 'c5i');
    final model = EndpointModelUpdate(revision: 'REV 2');
    final endpoint = EndpointUpdate(compute: compute, model: model);
    final result = await apiInstance.updateEndpoint('SJH Test', endpoint);
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Update Endpoint: $e - exiting');
    return;
  }

  //
  // Get endpoint logs
  //
  print('');
  print('*** Endpoint API get endpoint logs ***');
  print('');
  try {
    final result = await apiInstance.getEndpointLogs('SJH Test', tail: 20);
    print(result);
  } catch (e) {
    print(
        'Exception when calling Endpoint API Get Endpoint Logs: $e - exiting');
    return;
  }

  //
  // Get endpoint metric
  //
  print('');
  print('*** Endpoint API get endpoint metric ***');
  print('');
  try {
    await apiInstance.getEndpointMetric('SJH Test', 'request-count');
    print('Endpoint aggregated metrics returned successfully');
  } catch (e) {
    print(
        'Exception when calling Endpoint API Get Endpoint Metric: $e - exiting');
    return;
  }

  //
  // Pause endpoint
  //
  print('');
  print('*** Endpoint API pause endpoint ***');
  print('');
  try {
    final result = await apiInstance.pauseEndpoint('SJH Test');
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Pause Endpoint: $e - exiting');
    return;
  }

  //
  // Resume endpoint
  //
  print('');
  print('*** Endpoint API resume endpoint ***');
  print('');
  try {
    final result = await apiInstance.resumeEndpoint('SJH Test');
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Resume Endpoint: $e - exiting');
    return;
  }

  //
  // Scale endpoint to zero
  // This API call exists in the swagger docs but not in the openapi spec.
  //
  print('');
  print('*** Endpoint API scale endpoint to zero ***');
  print('');
  try {
    print('API call does not exist in the Open API specification');
  } catch (e) {
    print(
        'Exception when calling Endpoint API Scale Endpoint To Zero: $e - exiting');
    return;
  }

  //
  // Delete endpoint
  //
  print('');
  print('*** Endpoint API delete endpoint ***');
  print('');
  try {
    await apiInstance.deleteEndpoint('SJH Test');
    print('Endpoint deleted successfully');
  } catch (e) {
    print('Exception when calling Endpoint API Delete Endpoint : $e - exiting');
    return;
  }

  return;
}
