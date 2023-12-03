/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseNLPTokenClassification {
  /// Returns a new [ApiResponseNLPTokenClassification] instance.
  ApiResponseNLPTokenClassification(
      {required this.entityGroup,
      required this.score,
      required this.word,
      required this.start,
      required this.end});

  /// The type for the entity being recognized (model specific).
  String entityGroup;

  /// How likely the entity was recognized.
  double score;

  /// The string that was captured
  String word;

  /// The offset stringwise where the answer is located. Useful to disambiguate
  /// if word occurs multiple times.
  int start;

  /// The offset stringwise where the answer is located. Useful to disambiguate
  /// if word occurs multiple times.
  int end;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPTokenClassification && other.score == score;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (score.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPTokenClassification - [Entity Group=$entityGroup, Score=$score, Word=$word, Start=$start, Stop=$end]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'entity_group'] = entityGroup;
    json[r'score'] = score;
    json[r'word'] = word;
    json[r'start'] = start;
    json[r'end'] = end;
    return json;
  }

  /// Returns a new [ApiResponseNLPTokenClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPTokenClassification? fromJson(dynamic value) {
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

      return ApiResponseNLPTokenClassification(
        entityGroup: mapValueOfType<String>(json, r'entity_group')!,
        score: mapValueOfType<double>(json, r'score')!,
        word: mapValueOfType<String>(json, r'word')!,
        start: mapValueOfType<int>(json, r'start')!,
        end: mapValueOfType<int>(json, r'end')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPTokenClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPTokenClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPTokenClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPTokenClassification> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseNLPTokenClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPTokenClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPFillMask-objects as value to a dart map
  static Map<String, List<ApiResponseNLPTokenClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPTokenClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPTokenClassification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entity_group',
    'score',
    'word',
    'start',
    'end'
  };
}
