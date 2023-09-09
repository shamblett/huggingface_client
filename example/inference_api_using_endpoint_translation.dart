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
  // Create an inference endpoint with the 'Helsinki-NLP/opus-mt-ru-en' model and
  // the text translation task.

  // Get an inference client with your Hugging Face API key as authentication and
  // your created inference endpoint
  final client = HuggingFaceClient.getInferenceClient(inferenceApiKey,
      'https://m9tz8n4d4lq8uq54.us-east-1.aws.endpoints.huggingface.cloud');

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Text translation task
  //
  print('');
  print('*** Text Translation Task ***');
  print('');
  try {
    final input = 'Меня зовут Вольфганг и я живу в Берлине';
    final params = ApiQueryNLPTranslation(inputs: [input]);
    // Leave the model empty, the inference endpoint already has the model.
    final result = await apiInstance.queryNLPTranslation(
        taskParameters: params, model: '');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row?.translationText);
      }
    } else {
      print('Inference task API Text Translation returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Text Translation: $e - exiting');
    return;
  }

  return;
}
