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

import 'package:huggingface_client/src/api/api.dart';
import 'package:huggingface_client/src/openapi/api.dart';
export 'package:huggingface_client/src/openapi/api.dart';
import 'package:huggingface_client/src/http/http.dart';
export 'package:huggingface_client/src/http/http.dart';

part 'src/huggingface_client.dart';
part 'src/openapi/api/endpoint_api.dart';
part 'src/openapi/api/endpoint_provider_api.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

InferenceApiClient defaultInferenceApiClient = InferenceApiClient();
