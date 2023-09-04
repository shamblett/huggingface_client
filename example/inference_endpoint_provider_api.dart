/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'package:huggingface_client/huggingface_client.dart';
import 'api_key.dart';

/// Examples of how to use the Hugging Face Inference endpoint provider API to perform
/// inference endpoint provider tasks.

void main() async {
  // Get an inference endpoint provider API client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getEndpointProviderClient(
      apiKey, 'shamblett', HuggingFaceClient.endpointBasePath);

  // Get an instance of the inference endpoint API using our client
  final apiInstance = EndpointProviderApi(client);

  //
  // List vendors, regions and compute resources available
  //
  print('');
  print('*** Endpoint Provider API ***');
  print('');
  try {
    final result = await apiInstance.listVendors();
    print(result);
  } catch (e) {
    print('Exception when calling Endpoint Provider API : $e - exiting');
    return;
  }

  return;
}
