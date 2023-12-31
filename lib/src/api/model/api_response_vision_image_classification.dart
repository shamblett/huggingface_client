/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseVisionImageClassification {
  /// Returns a new [ApiResponseVisionImageClassification] instance.
  ApiResponseVisionImageClassification(
      {required this.label, required this.score});

  /// The label for the class (model specific).
  String label;

  /// A float that represents how likely it is that the image file belongs to this class.
  double score;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseVisionImageClassification && other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode);

  @override
  String toString() =>
      'ApiResponseVisionImageClassification - [Label=$label, Score=${score.toStringAsFixed(3)}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = label;
    json[r'score'] = score;
    return json;
  }

  /// Returns a new [ApiResponseVisionImageClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseVisionImageClassification? fromJson(dynamic value) {
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

      return ApiResponseVisionImageClassification(
          label: mapValueOfType<String>(json, r'label')!,
          score: mapValueOfType<double>(json, r'score')!);
    }
    return null;
  }

  static List<ApiResponseVisionImageClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseVisionImageClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseVisionImageClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseVisionImageClassification> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseVisionImageClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ApiResponseVisionImageClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseVisionImageClassification-objects as value to a dart map
  static Map<String, List<ApiResponseVisionImageClassification>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseVisionImageClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseVisionImageClassification.listFromJson(
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
