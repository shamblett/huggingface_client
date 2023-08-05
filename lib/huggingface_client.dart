/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

library huggingface_client;

import 'dart:io' if (dart.library.html) 'dart:html';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:huggingface_client/src/openapi/api.dart';
export 'package:huggingface_client/src/openapi/api.dart';

part 'src/huggingface_client.dart';
part 'src/api/endpoint_api_client.dart';
part 'src/api/inference_api_client.dart';
part 'src/api/api/inference_api.dart';
part 'src/api/model/api_response_query_standard.dart';
part 'src/api/model/api_query_nlp_fill_mask.dart';
part 'src/api/model/api_response_nlp_fill_mask.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

InferenceApiClient defaultInferenceApiClient = InferenceApiClient();