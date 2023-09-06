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
  // Inference Vision Image Segmentation task
  //

  // Assumes you are running the example from the project root i.e
  // 'dart example/vision/inference_image_segmentation_api.dart'
  final imageFilePath =
      '${Directory.current.path}${Platform.pathSeparator}example${Platform.pathSeparator}'
      'vision${Platform.pathSeparator}test${Platform.pathSeparator}predict-dog.png';
  final imageFile = File(imageFilePath);
  final imageFileContents = imageFile.readAsBytesSync();
  imageFileContents.buffer.asByteData();
  print('');
  print('*** Inference API Vision Image Segmentation task ***');
  print('');
  try {
    final result = await apiInstance.queryVisionImageSegmentation(
        imageFile: imageFileContents,
        model: 'facebook/detr-resnet-50-panoptic');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print('Inference Vision Image Segmentation result is empty');
    }
  } catch (e) {
    print(
        'Exception when calling Vision Inference Image Segmentation API : $e - exiting');
    return;
  }

  return;
}
