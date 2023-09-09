/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'package:huggingface_client/huggingface_client.dart';
import 'api_key.dart';

/// Examples of how to use the Hugging Face Inference API to perform basic
/// model queries against an existing inference endpoint.

void main() async {
  // Create an inference endpoint with the 'gpt2' model and the
  // conversational task.

  // Get an inference client with your Hugging Face API key as authentication and
  // your created inference endpoint
  final client = HuggingFaceClient.getInferenceClient(inferenceApiKey,
      'https://dqup5z4dnzemzw6u.us-east-1.aws.endpoints.huggingface.cloud');

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Conversational  task.
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
    // Leave the model empty, the inference endpoint already has the model.
    final result = await apiInstance.queryNLPConversational(
        taskParameters: params, model: '');
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
