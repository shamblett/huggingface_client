/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseAudioClassification {
  /// Returns a new [ApiResponseAudioClassification] instance.
  ApiResponseAudioClassification({required this.label, required this.score});

  /// The label for the class (model specific).
  String label;

  /// A float that represents how likely it is that the audio file belongs to this class.
  double score;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseAudioClassification && other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode);

  @override
  String toString() =>
      'ApiResponseAudioClassification - [Label=$label, Score=${score.toStringAsFixed(3)}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = label;
    json[r'score'] = score;
    return json;
  }

  /// Returns a new [ApiResponseAudioClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseAudioClassification? fromJson(dynamic value) {
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

      return ApiResponseAudioClassification(
          label: mapValueOfType<String>(json, r'label')!,
          score: mapValueOfType<double>(json, r'score')!);
    }
    return null;
  }

  static List<ApiResponseAudioClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseAudioClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseAudioClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseAudioClassification> mapFromJson(dynamic json) {
    final map = <String, ApiResponseAudioClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseAudioClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseAudioClassification-objects as value to a dart map
  static Map<String, List<ApiResponseAudioClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseAudioClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseAudioClassification.listFromJson(
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
