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
  // Conversational  task
  //
  print('');
  print('*** Conversational Task ***');
  print('');
  try {
    final pastUserInputs = 'Which movie is the best ?';
    final generatedResponses = 'It is Die Hard for sure.';
    final text = 'Can you explain why ?';
    final params = ApiQueryNLPConversational(
        text: text,
        pastUserInputs: [pastUserInputs],
        generatedResponses: [generatedResponses]);

    final result = await apiInstance.queryNLPConversational(
        taskParameters: params, model: 'google/gemma-2-2b-it');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print('Inference task API Conversational  returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Conversational: $e - exiting');
    return;
  }

  return;
}
