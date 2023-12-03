/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseNLPQA {
  /// Returns a new [ApiResponseNLPQA] instance.
  ApiResponseNLPQA(
      {required this.answer,
      required this.score,
      required this.start,
      required this.end});

  /// A string that’s the answer within the text.
  String answer;

  /// A float that represents how likely that the answer is correct.
  double score;

  /// The index (string wise) of the start of the answer within context.
  int start;

  /// The index (string wise) of the stop of the answer within context.
  int end;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPQA && other.answer == answer;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (answer.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPQA - [Answer=$answer, Score=$score, Start=$start, Stop=$end]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'answer'] = answer;
    json[r'score'] = score;
    json[r'start'] = start;
    json[r'end'] = end;
    return json;
  }

  /// Returns a new [ApiResponseNLPQA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPQA? fromJson(dynamic value) {
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

      return ApiResponseNLPQA(
        answer: mapValueOfType<String>(json, r'answer')!,
        score: mapValueOfType<double>(json, r'score')!,
        start: mapValueOfType<int>(json, r'start')!,
        end: mapValueOfType<int>(json, r'end')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPQA> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPQA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPQA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPQA> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPQA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPQA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPFillMask-objects as value to a dart map
  static Map<String, List<ApiResponseNLPQA>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPQA>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPQA.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'answer', 'score', 'start', 'end'};
}
