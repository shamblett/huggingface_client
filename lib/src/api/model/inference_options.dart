/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

///
/// Common inference options
///
class InferenceOptions {
  InferenceOptions({this.useCache = true, this.waitForModel = false});

  /// (Default: true). Boolean. There is a cache layer on the inference API to speedup requests we have already seen.
  /// Most models can use those results as is as models are deterministic (meaning the results will be the same anyway).
  /// However if you use a non deterministic model, you can set this parameter to prevent the caching mechanism from being
  /// used resulting in a real new query.
  bool useCache = true;

  /// (Default: false) Boolean. If the model is not ready, wait for it instead of receiving 503. It limits the number of requests
  /// required to get your inference done. It is advised to only set this flag to true after receiving a 503
  /// error as it will limit hanging in your application to known places.
  bool waitForModel = false;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'options'] = {'use_cache': useCache, 'wait_for_model': waitForModel};
    return json;
  }

  /// Returns a new [InferenceOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InferenceOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "ApiResponseError[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ApiResponseError[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return InferenceOptions(
          useCache: mapValueOfType<bool>(json, r'use_cache')!,
          waitForModel: mapValueOfType<bool>(json, r'wait_for_model')!);
    }
    return null;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InferenceOptions &&
          (other.useCache == useCache) &&
          (other.waitForModel == waitForModel);

  @override
  int get hashCode => useCache.hashCode + waitForModel.hashCode;

  @override
  String toString() =>
      'InferenceOptions - [Use Cache=${useCache ? 'true' : 'false'}, Wait for model=${waitForModel ? 'true' : 'false'}]';

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'use_cache', 'wait_for_model'};
}
