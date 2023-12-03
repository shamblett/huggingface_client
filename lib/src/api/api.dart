/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

library api.api;

import 'dart:async';
import 'dart:convert';

import '../../huggingface_client.dart';
import '../http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'inference_api_client.dart';
part 'endpoint_api_client.dart';
part 'endpoint_provider_api_client.dart';
part './api/inference_api.dart';
part './model/api_query_nlp_conversational.dart';
part './model/api_query_nlp_feature_extraction.dart';
part './model/api_query_nlp_fill_mask.dart';
part './model/api_query_nlp_qa.dart';
part './model/api_query_nlp_sentence_similarity.dart';
part './model/api_query_nlp_summarisation.dart';
part './model/api_query_nlp_table_qa.dart';
part './model/api_query_nlp_text_classification.dart';
part './model/api_query_nlp_text_generation.dart';
part './model/api_query_nlp_token_classification.dart';
part './model/api_query_nlp_translation.dart';
part './model/api_query_nlp_zero_shot_classification.dart';
part './model/api_response_audio_asr.dart';
part './model/api_response_audio_classification.dart';
part './model/api_response_nlp_conversational.dart';
part './model/api_response_nlp_feature_extraction.dart';
part './model/api_response_nlp_fill_mask.dart';
part './model/api_response_nlp_qa.dart';
part './model/api_response_nlp_summarisation.dart';
part './model/api_response_nlp_table_qa.dart';
part './model/api_response_nlp_text_classification.dart';
part './model/api_response_nlp_text_generation.dart';
part './model/api_response_nlp_token_classification.dart';
part './model/api_response_nlp_translation.dart';
part './model/api_response_nlp_zero_shot_classification.dart';
part './model/api_response_query_standard.dart';
part './model/api_response_vision_image_classification.dart';
part './model/api_response_vision_image_segmentation.dart';
part './model/api_response_vision_object_detection.dart';
part './model/inference_options.dart';
