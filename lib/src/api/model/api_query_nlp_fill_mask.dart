/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

/// Tries to fill in a hole with a missing word (token to be precise).
/// That’s the base task for BERT models.
///
class ApiQueryNLPFillMask {
  /// Returns a new [ApiQueryNLPFillMask] instance.
  ApiQueryNLPFillMask({required this.inputs, this.options});

  /// Strings to be filled from, must contain the [MASK] token
  /// (check model card for exact name of the mask)
  List<String> inputs;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPFillMask && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPFillMask - [Inputs=$inputs, Options=$options}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPFillMask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPFillMask? fromJson(dynamic value) {
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

      return ApiQueryNLPFillMask(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          options: mapValueOfType<InferenceOptions>(json, r'options')!);
    }
    return null;
  }

  static List<ApiQueryNLPFillMask> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPFillMask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPFillMask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPFillMask> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPFillMask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPFillMask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPFillMask-objects as value to a dart map
  static Map<String, List<ApiQueryNLPFillMask>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPFillMask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPFillMask.listFromJson(
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
