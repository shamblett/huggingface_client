/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

/// This task reads some text and outputs raw float values, that are usually consumed
/// as part of a semantic database/semantic search.
///
class ApiQueryNLPFeatureExtraction {
  /// Returns a new [ApiQueryNLPFeatureExtraction] instance.
  ApiQueryNLPFeatureExtraction({required this.inputs, this.options});

  /// String to be classified
  List<String> inputs;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPFeatureExtraction && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPFeatureExtraction - [Inputs=$inputs, Options=$options}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPFeatureExtraction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPFeatureExtraction? fromJson(dynamic value) {
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

      return ApiQueryNLPFeatureExtraction(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPFeatureExtraction> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPFeatureExtraction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPFeatureExtraction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPFeatureExtraction> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPFeatureExtraction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPFeatureExtraction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPFeatureExtraction-objects as value to a dart map
  static Map<String, List<ApiQueryNLPFeatureExtraction>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPFeatureExtraction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPFeatureExtraction.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inputs',
  };
}
