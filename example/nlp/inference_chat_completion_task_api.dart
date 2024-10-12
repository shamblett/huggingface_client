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
    final params = ApiQueryChatCompletion(
      model: "HuggingFaceH4/starchat2-15b-v0.1",
      stream: false,
      message: [
        {"role": "user", "content": "What is the capital of France?"}
      ],
    );
    print("Simple response");
    final result = await apiInstance.chatCompletion(query: params);
    print(result);

    print("Stream / result");
    final streamresult = apiInstance.chatStreamCompletion(query: params);
    streamresult.listen((pri) => print(pri.delta.content));
  } catch (e) {
    print(
        'Exception when calling Inference task API Conversational: $e - exiting');
    return;
  }

  return;
}
