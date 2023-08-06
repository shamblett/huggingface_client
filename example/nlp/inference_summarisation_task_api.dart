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
      apiKey, HuggingFaceClient.inferenceBasePath);

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Text summarisation task
  //
  print('');
  print('*** Text Summarisation Task ***');
  print('');
  try {
    final input =
        'The tower is 324 metres (1,063 ft) tall, about the same height as an 81-storey building, and the tallest '
        'structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, '
        'the Eiffel Tower surpassed the Washington Monument to become the tallest man-made structure in the world, '
        'a title it held for 41 years until the Chrysler Building in New York City was finished in 1930. It was the '
        'first structure to reach a height of 300 metres. Due to the addition of a broadcasting aerial at the top of '
        'the tower in 1957, it is now taller than the Chrysler Building by 5.2 metres (17 ft). Excluding transmitters, '
        'the Eiffel Tower is the second tallest free-standing structure in France after the Millau Viaduct.';
    final params = ApiQueryNLPSummarisation(inputs: [input]);
    final result = await apiInstance.queryNLPSummarisation(
        taskParameters: params, model: 'facebook/bart-large-cnn');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row?.summaryText);
      }
    } else {
      print('Inference task API Text Summarisation returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Text Summarisation: $e - exiting');
    return;
  }

  return;
}
