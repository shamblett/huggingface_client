/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'dart:io';

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
    final imageFilePath =
        '${Directory.current.path}${Platform.pathSeparator}example${Platform.pathSeparator}'
        'audio${Platform.pathSeparator}test${Platform.pathSeparator}textToImage.jpeg';
    final file = File(imageFilePath);
    final input = 'Astronaut riding a horse';
    final params = ApiResponseTextToImage(inputs: input);
    final result = await apiInstance.textToImage(
        textToImageParam: params, model: "black-forest-labs/FLUX.1-dev");

    print(result);
    await file.writeAsBytes(result);
  } catch (e) {
    print(
        'Exception when calling Inference task API Conversational: $e - exiting');
    return;
  }

  return;
}
