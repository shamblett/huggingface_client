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
  // Sentence Similarity task
  //
  print('');
  print('*** Sentence Similarity Task ***');
  print('');
  try {
    final sentences = <String>[
      'That is a happy dog',
      'That is a very happy person',
      'Today is a sunny day'
    ];
    final params = ApiQueryNLPSentenceSimilarity(
        sourceSentence: '"That is a happy person', sentences: sentences);
    final result = await apiInstance.queryNLPSentenceSimilarity(
        taskParameters: params,
        model: 'sentence-transformers/all-MiniLM-L6-v2');
    print(result!);
  } catch (e) {
    print(
        'Exception when calling Inference task API Sentence Similarity : $e - exiting');
    return;
  }

  return;
}
