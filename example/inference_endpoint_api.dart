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
  final client = HuggingFaceClient.getEndpointClient(apiKey, 'shamblett',
      'https://uu149rez6gw9ehej.eu-west-1.aws.endpoints.huggingface.cloud/distilbert-sentiment');

  // Get an instance of the inference API using our client
  final apiInstance = EndpointApi(client);

  //
  // Standard no task based inference query using the gpt2 model
  //
  print('');
  print('*** Inference API standard query ***');
  print('');
  try {
    await apiInstance.listEndpoint();
  } catch (e) {
    print('Exception when calling Inference API standard query: $e - exiting');
    return;
  }

  return;
}
