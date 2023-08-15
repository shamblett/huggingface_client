/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

library huggingface_client;

import 'dart:io' if (dart.library.html) 'dart:html';
import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:huggingface_client/src/openapi/api.dart';
export 'package:huggingface_client/src/openapi/api.dart';

part 'src/huggingface_client.dart';
part 'src/api/endpoint_api_client.dart';
part 'src/api/inference_api_client.dart';
part 'src/api/api/inference_api.dart';
part 'src/api/model/inference_options.dart';
part 'src/api/model/api_response_query_standard.dart';
part 'src/api/model/api_query_nlp_fill_mask.dart';
part 'src/api/model/api_response_nlp_fill_mask.dart';
part 'src/api/model/api_query_nlp_summarisation.dart';
part 'src/api/model/api_response_nlp_summarisation.dart';
part 'src/api/model/api_query_nlp_qa.dart';
part 'src/api/model/api_response_nlp_qa.dart';
part 'src/api/model/api_query_nlp_table_qa.dart';
part 'src/api/model/api_response_nlp_table_qa.dart';
part 'src/api/model/api_query_nlp_sentence_similarity.dart';
part 'src/api/model/api_response_nlp_sentence_similarity.dart';
part 'src/api/model/api_query_nlp_text_classification.dart';
part 'src/api/model/api_response_nlp_text_classification.dart';
part 'src/api/model/api_query_nlp_text_generation.dart';
part 'src/api/model/api_response_nlp_text_generation.dart';
part 'src/api/model/api_query_nlp_token_classification.dart';
part 'src/api/model/api_response_nlp_token_classification.dart';
part 'src/api/model/api_query_nlp_translation.dart';
part 'src/api/model/api_response_nlp_translation.dart';
part 'src/api/model/api_query_nlp_zero_shot_classification.dart';
part 'src/api/model/api_response_nlp_zero_shot_classification.dart';
part 'src/api/model/api_query_nlp_conversational.dart';
part 'src/api/model/api_response_nlp_conversational.dart';
part 'src/api/model/api_query_nlp_feature_extraction.dart';
part 'src/api/model/api_response_nlp_feature_extraction.dart';
part 'src/api/model/api_response_audio_asr.dart';
part 'src/api/model/api_response_audio_classification.dart';
part 'src/api/model/api_response_vision_image_classification.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

InferenceApiClient defaultInferenceApiClient = InferenceApiClient();
