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
  // Table question and answer task
  //
  print('');
  print('*** Table Question and Answer Task ***');
  print('');
  try {
    final table = <String, List<String>>{
      'Repository': ['Transformers', 'Datasets', 'Tokenizers'],
      'Stars': ['36542', '4512', '3934'],
      'Contributors': ['651', '77', '34'],
      'Programming language': ['Python', 'Python', 'Rust, Python and NodeJS']
    };
    final input = ApiTableQuery(
        query: 'How many stars does the transformers repository have?',
        table: table);
    final params = ApiQueryNLPTableQA(inputs: [input]);
    final result = await apiInstance.queryNLPTableQA(
        taskParameters: params, model: 'google/tapas-base-finetuned-wtq');
    if (result!.isNotEmpty) {
      for (final row in result) {
        print(row);
      }
    }
  } catch (e) {
    print(
        'Exception when calling Inference task API Table Question and Answer: $e - exiting');
    return;
  }

  return;
}
