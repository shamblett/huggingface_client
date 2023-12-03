/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

/// Usually used for sentiment-analysis this will output the likelihood of
/// classes of an input.
///
class ApiQueryNLPTextClassification {
  /// Returns a new [ApiQueryNLPTextClassification] instance.
  ApiQueryNLPTextClassification({required this.inputs, this.options});

  /// String to be classified
  List<String> inputs;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPTextClassification && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPTextClassification - [Inputs=$inputs, Options=$options}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPTextClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPTextClassification? fromJson(dynamic value) {
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

      return ApiQueryNLPTextClassification(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPTextClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPTextClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPTextClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPTextClassification> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPTextClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPTextClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPTextClassification-objects as value to a dart map
  static Map<String, List<ApiQueryNLPTextClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPTextClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPTextClassification.listFromJson(
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
