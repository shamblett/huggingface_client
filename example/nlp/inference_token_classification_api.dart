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
      apiKey, HuggingFaceClient.inferenceBasePath);

  // Get an instance of the inference API using our client
  final apiInstance = InferenceApi(client);

  //
  // Token classification task
  //
  print('');
  print('*** Token Classification Task ***');
  print('');
  try {
    final input = 'My name is Sarah Jessica Parker but you can call me Jessica';
    final params = ApiQueryNLPTokenClassification(inputs: [input]);
    final result = await apiInstance.queryNLPTokenClassification(
        taskParameters: params,
        model: 'dbmdz/bert-large-cased-finetuned-conll03-english');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    } else {
      print('Inference task API Token Classification returned empty result');
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Token Classification: $e - exiting');
    return;
  }

  return;
}
