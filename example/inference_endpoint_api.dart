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
  // Client [parameters
  const userName = 'shamblett';
  // Get an inference endpoint API client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getEndpointClient(
      endpointApiKey, userName, HuggingFaceClient.endpointBasePath);

  // Get an instance of the inference endpoint API using our client
  final apiInstance = EndpointApi(client);

  // Endpoint parameters
  const endpointName = 'client-test';
  const revision =
      '11c5a3d5811f50298f278a704980280950aedb10'; // Will change from model to model
  const repository = 'gpt2';

  //
  // List endpoints
  //
  print('');
  print('*** Endpoint API list endpoints initially ***');
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
        repository: repository,
        revision: revision,
        task: EndpointTask.textClassification);
    final endpoint = Endpoint(
        compute: compute,
        model: model,
        name:
            endpointName, //  lowercase alphanumeric characters or '-' and have a length of 32 characters
        provider: EndpointProvider(region: 'us-east-1', vendor: 'aws'),
        type: EndpointType.public);
    final result = await apiInstance.createEndpoint(endpoint);
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Create Endpoint: $e - exiting');
    return;
  }

  //
  // List endpoints.
  // Note that the 'url' parameter of the endpoint status field is only populated when the
  // endpoint is 'running', not while it is 'initialising';
  //
  print('');
  print('*** Endpoint API list endpoints post create ***');
  print('');
  try {
    final result = await apiInstance.listEndpoint();
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API List Endpoints: $e - exiting');
    return;
  }

  //
  // Get endpoint information
  //
  print('');
  print('*** Endpoint API get endpoint information ***');
  print('');
  try {
    final result = await apiInstance.getEndpoint(endpointName);
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
    final compute =
        EndpointComputeUpdate(instanceType: 'c6i', instanceSize: 'small');
    final model = EndpointModelUpdate(revision: revision);
    final endpoint = EndpointUpdate(compute: compute, model: model);
    final result = await apiInstance.updateEndpoint(endpointName, endpoint);
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
    final result = await apiInstance.getEndpointLogs(endpointName, tail: 20);
    print('${result?.substring(0, 100)}....');
  } catch (e) {
    print(
        'Exception when calling Endpoint API Get Endpoint Logs: $e - exiting');
    return;
  }

  //
  // Get endpoint metric
  //
  // Note this always seems to return a 500 error no matter what state the
  // endpoint is in.
  print('');
  print('*** Endpoint API get endpoint metric ***');
  print('');
  try {
    await apiInstance.getEndpointMetric(endpointName, 'request-count');
    print('Endpoint aggregated metrics returned successfully');
  } catch (e) {
    print(
        'Exception when calling Endpoint API Get Endpoint Metric: $e - exiting');
  }

  //
  // Pause endpoint
  //
  print('');
  print('*** Endpoint API pause endpoint ***');
  print('');
  try {
    final result = await apiInstance.pauseEndpoint(endpointName);
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
    final result = await apiInstance.resumeEndpoint(endpointName);
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
    await apiInstance.deleteEndpoint(endpointName);
    print('Endpoint deleted successfully');
  } catch (e) {
    print('Exception when calling Endpoint API Delete Endpoint : $e - exiting');
    return;
  }

  return;
}
