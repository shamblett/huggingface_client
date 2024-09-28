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
  // Feature Extraction task
  //
  // Note : this task currently fails,
  // see https://discuss.huggingface.co/t/sentencesimilarityinputscheck-expected-dict-not-list-root-in-parameters/39715
  print('');
  print('*** Feature Extraction Task ***');
  print('');
  try {
    final input = 'A string of text from which to extract the features.';
    final params = ApiQueryNLPFeatureExtraction(
        inputs: input, options: InferenceOptions(waitForModel: true));
    final result = await apiInstance.queryNLPFeatureExtraction(
        taskParameters: params, model: 'facebook/bart-base');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row?.representationFeatures);
      }
      print('Complete');
    } else {
      print('Inference task API Feature Extraction returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Feature Extraction: $e - exiting');
    return;
  }

  return;
}
