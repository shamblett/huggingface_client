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
  // List enpoints
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
}
