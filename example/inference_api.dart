/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'package:huggingface_client/huggingface_client.dart';
import 'api_key.dart';

/// Examples of how to use the Hugging Face Inference API to perform basic
/// model queries and task based queries.

Future<void> main() async {
// Get an inference client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getInferenceClient(
      apiKey, HuggingFaceClient.inferenceBasePath);

// Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

//
// Standard no task based inference query using the gpt2 model
//
  print('');
  print('*** Inference API standard query ***');
  print('');
  try {
    final result =
        await apiInstance.query(queryString: 'Where is Paris?', model: 'gpt2');
    if (result!.isNotEmpty) {
      print(result);
    } else {
      print('Inference API standard query returned empty result');
    }
  } catch (e) {
    print('Exception when calling Inference API standard query: $e - exiting');
    return;
  }
}
