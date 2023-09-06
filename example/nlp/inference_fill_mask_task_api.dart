/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'package:huggingface_client/huggingface_client.dart';
import '../api_key.dart';

/// Examples of how to use the Hugging Face Inference API to perform NLP
/// task based model queries.

void main() async {
  // Get an inference client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getInferenceClient(
      inferenceApiKey, HuggingFaceClient.inferenceBasePath);

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Fill mask task
  //
  print('');
  print('*** Fill Mask Task ***');
  print('');
  try {
    final input = 'The answer to the universe is [MASK].';
    final params = ApiQueryNLPFillMask(inputs: [input]);
    final result = await apiInstance.queryNLPFillMask(
        taskParameters: params, model: 'bert-base-uncased');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print('Inference task API Fill Mask returned empty result');
    }
  } catch (e) {
    print('Exception when calling Inference task API Fill Mask: $e - exiting');
    return;
  }

  return;
}
