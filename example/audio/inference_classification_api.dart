/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

import 'dart:io';

import 'package:huggingface_client/huggingface_client.dart';
import '../api_key.dart';

/// Examples of how to use the Hugging Face Inference API to perform basic
/// model tasks.

void main() async {
  // Get an inference client with your Hugging Face API key as authentication.
  final client = HuggingFaceClient.getInferenceClient(
      inferenceApiKey, HuggingFaceClient.inferenceBasePath);

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Inference Audio Classification task
  //

  // Assumes you are running the example from the project root i.e
  // 'dart example/audio/inference_classification_api.dart'
  final audioFilePath =
      '${Directory.current.path}${Platform.pathSeparator}example${Platform.pathSeparator}'
      'audio${Platform.pathSeparator}test${Platform.pathSeparator}ac.wav';
  final audioFile = File(audioFilePath);
  final audioFileContents = audioFile.readAsBytesSync();
  audioFileContents.buffer.asByteData();
  print('');
  print('*** Inference API Audio Classification task ***');
  print('');
  try {
    final result = await apiInstance.queryAudioClassification(
        audioFile: audioFileContents, model: 'superb/hubert-large-superb-er');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print('Inference Audio Classification result is empty');
    }
  } catch (e) {
    print(
        'Exception when calling Audio Inference Classification API : $e - exiting');
    return;
  }

  return;
}
