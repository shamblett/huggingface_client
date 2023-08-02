//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/v1endpoint_api.dart';
part 'api/v1provider_api.dart';
part 'api/v2endpoint_api.dart';
part 'api/v2provider_api.dart';

part 'model/accelerator.dart';
part 'model/api_response_error.dart';
part 'model/compute.dart';
part 'model/compute_list.dart';
part 'model/endpoint.dart';
part 'model/endpoint_accelerator.dart';
part 'model/endpoint_account.dart';
part 'model/endpoint_compute.dart';
part 'model/endpoint_compute_update.dart';
part 'model/endpoint_framework.dart';
part 'model/endpoint_image_credentials.dart';
part 'model/endpoint_model.dart';
part 'model/endpoint_model_image.dart';
part 'model/endpoint_model_image_one_of.dart';
part 'model/endpoint_model_image_one_of1.dart';
part 'model/endpoint_model_image_one_of1_custom.dart';
part 'model/endpoint_model_image_update.dart';
part 'model/endpoint_model_image_update_one_of.dart';
part 'model/endpoint_model_image_update_one_of_custom.dart';
part 'model/endpoint_model_update.dart';
part 'model/endpoint_provider.dart';
part 'model/endpoint_scaling.dart';
part 'model/endpoint_scaling_update.dart';
part 'model/endpoint_state.dart';
part 'model/endpoint_status.dart';
part 'model/endpoint_status_private.dart';
part 'model/endpoint_task.dart';
part 'model/endpoint_type.dart';
part 'model/endpoint_update.dart';
part 'model/endpoint_with_status.dart';
part 'model/endpoint_with_status_list.dart';
part 'model/metric_name.dart';
part 'model/metrics_params.dart';
part 'model/region.dart';
part 'model/region_list.dart';
part 'model/status.dart';
part 'model/vendor.dart';
part 'model/vendor_list.dart';
part 'model/vendors.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
