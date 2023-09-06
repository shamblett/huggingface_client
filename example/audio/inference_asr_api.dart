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
  // Inference Audio ASR task
  //

  // Assumes you are running the example from the project root i.e
  // 'dart example/audio/inference_asr_api.dart'
  final audioFilePath =
      '${Directory.current.path}${Platform.pathSeparator}example${Platform.pathSeparator}'
      'audio${Platform.pathSeparator}test${Platform.pathSeparator}asr.mp3';
  final audioFile = File(audioFilePath);
  final audioFileContents = audioFile.readAsBytesSync();
  audioFileContents.buffer.asByteData();
  print('');
  print('*** Inference API Audio ASR task ***');
  print('');
  try {
    final result = await apiInstance.queryAudioASR(
        audioFile: audioFileContents, model: 'facebook/wav2vec2-base-960h');
    print('Inference Result');
    print(result?.text);
    print('');
    print('Actual audio text');
    print(
        'My dear Fanny, you feel these things a great deal too much. I am most happy that you like the chain');
  } catch (e) {
    print('Exception when calling Audio Inference ASR API : $e - exiting');
    return;
  }

  return;
}
