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
  // Question and answer task
  //
  print('');
  print('*** Question and Answer Task ***');
  print('');
  try {
    final input = ApiQuestionContext(
        question: 'What is my name?',
        context: 'My name is Clara and I live in Berkeley.');
    final params = ApiQueryNLPQA(inputs: input);
    final result = await apiInstance.queryNLPQA(
        taskParameters: params, model: 'deepset/roberta-base-squad2');
    print(result!);
  } catch (e) {
    print(
        'Exception when calling Inference task API Question Answer: $e - exiting');
    return;
  }

  return;
}
