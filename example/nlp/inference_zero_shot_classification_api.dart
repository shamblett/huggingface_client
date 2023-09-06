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
  // Zero shot classification task
  //
  // Note : may not work, see https://huggingface.co/facebook/bart-large-mnli/discussions/20
  print('');
  print('*** Zero Shot Classification Task ***');
  print('');
  try {
    final input =
        'Hi, I recently bought a device from your company but it is not working as advertised and I would like to get reimbursed!';
    final candidateLabels = ['refund', 'legal', 'faq'];
    final params = ApiQueryNLPZeroShotClassification(
        inputs: [input], candidateLabels: candidateLabels);
    final result = await apiInstance.queryNLPZeroShotClassification(
        taskParameters: params, model: 'facebook/bart-large-mnli');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print(
          'Inference task API Zero Shot Classification returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Zero Shot Classification: $e - exiting');
    return;
  }

  return;
}
