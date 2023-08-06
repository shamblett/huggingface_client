/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiQuestionContext {
  ApiQuestionContext({required this.question, required this.context});

  /// The question to ask.
  String question;

  /// The context to as it in.
  String context;

  @override
  String toString() =>
      'ApiQuestionContext - [Question = $question, Context = $context]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'question'] = question;
    json[r'context'] = context;
    return json;
  }
}

/// Want to have a nice know-it-all bot that can answer any question?
///
class ApiQueryNLPQA {
  /// Returns a new [ApiQueryNLPQA] instance.
  ApiQueryNLPQA({required this.inputs});

  /// Input question and context strings
  List<ApiQuestionContext> inputs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPQA && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() => 'ApiQueryNLPQA - [Inputs=$inputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    final inputParam = [<String, dynamic>{}];
    for (final input in inputs) {
      inputParam.add(input.toJson());
    }
    json[r'inputs'] = inputParam;
    return json;
  }

  /// Returns a new [ApiQueryNLPQA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPQA? fromJson(dynamic value) {
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

      return ApiQueryNLPQA(
          inputs: mapValueOfType<List<ApiQuestionContext>>(json, r'inputs')!);
    }
    return null;
  }

  static List<ApiQueryNLPQA> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPQA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPQA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPQA> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPQA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPQA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPQA-objects as value to a dart map
  static Map<String, List<ApiQueryNLPQA>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPQA>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPQA.listFromJson(
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
