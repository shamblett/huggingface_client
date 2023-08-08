/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiResponseNLPTextClassification {
  /// Returns a new [ApiResponseNLPTextClassification] instance.
  ApiResponseNLPTextClassification({required this.label, required this.score});

  /// The label for the class (model specific)
  String label;

  /// A floats that represents how likely is that the text belongs
  /// the this class.
  double score;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPTextClassification && other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPTextClassification - [Label=$label, Score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = label;
    json[r'score'] = score;
    return json;
  }

  /// Returns a new [ApiResponseNLPTextClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPTextClassification? fromJson(dynamic value) {
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

      return ApiResponseNLPTextClassification(
          label: mapValueOfType<String>(json, r'label')!,
          score: mapValueOfType<double>(json, r'score')!);
    }
    return null;
  }

  static List<ApiResponseNLPTextClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPTextClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPTextClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPTextClassification> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseNLPTextClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPTextClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPTextClassification-objects as value to a dart map
  static Map<String, List<ApiResponseNLPTextClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPTextClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPTextClassification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'label', 'score'};
}
