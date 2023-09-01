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
      apiKey, 'shamblett', HuggingFaceClient.endpointBasePath);

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
        instanceSize: 'small',
        instanceType: 'c6i',
        scaling: EndpointScaling(maxReplica: 8, minReplica: 2));
    final endpointModelImage = EndpointModelImage(
        huggingface: Object(), custom: EndpointModelImageOneOf1Custom(url: ''));
    final model = EndpointModel(
        framework: EndpointFramework.custom,
        image: endpointModelImage,
        repository: 'gpt2');
    final endpoint = Endpoint(
        compute: compute,
        model: model,
        name: 'SJH Test',
        provider: EndpointProvider(region: 'us-east-1', vendor: 'aws'),
        type: EndpointType.private);
    final result = await apiInstance.createEndpoint(endpoint);
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint API Create Endpoint: $e - exiting');
    return;
  }

  return;
}
