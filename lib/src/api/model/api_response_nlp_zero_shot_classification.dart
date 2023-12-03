/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseNLPZeroShotClassification {
  /// Returns a new [ApiResponseNLPZeroShotClassification] instance.
  ApiResponseNLPZeroShotClassification({
    required this.sequence,
    required this.labels,
    required this.scores,
  });

  /// The string sent as an input.
  String sequence;

  /// The list of strings for labels that you sent (in order).
  List<String> labels;

  /// A list of floats that correspond the the probability of label,
  /// in the same order as labels.
  List<double> scores;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPZeroShotClassification &&
          other.sequence == sequence;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sequence.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPZeroShotClassification - [Sequence =$sequence, Lables=$labels, Scores=$scores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'sequence'] = sequence;
    json[r'labels'] = labels;
    json[r'scores'] = scores;
    return json;
  }

  /// Returns a new [ApiResponseNLPZeroShotClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPZeroShotClassification? fromJson(dynamic value) {
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

      return ApiResponseNLPZeroShotClassification(
        sequence: mapValueOfType<String>(json, r'sequence')!,
        labels: mapValueOfType<List<String>>(json, r'labels')!,
        scores: mapValueOfType<List<double>>(json, r'scores')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPZeroShotClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPZeroShotClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPZeroShotClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPZeroShotClassification> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseNLPZeroShotClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ApiResponseNLPZeroShotClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPZeroShotClassification-objects as value to a dart map
  static Map<String, List<ApiResponseNLPZeroShotClassification>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPZeroShotClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPZeroShotClassification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'sequence', 'labels', 'scores'};
}
