/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiTableQuery {
  ApiTableQuery({required this.query, required this.table});

  /// The query in plain text that you want to ask the table.
  String query;

  /// A table of data represented as a dict of list where entries are headers
  /// and the lists are all the values, all lists must have the same size.
  Map<String, List<String>> table;

  @override
  String toString() => 'ApiTableQuery - [Query = $query, Table = $table]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'query'] = query;
    json[r'table'] = table;
    return json;
  }
}

/// Want to have a nice know-it-all bot that can answer any question?
///
class ApiQueryNLPTableQA {
  /// Returns a new [ApiQueryNLPTableQA] instance.
  ApiQueryNLPTableQA({required this.inputs, this.options});

  /// Input question and context strings
  List<ApiTableQuery> inputs;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPTableQA && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() => 'ApiQueryNLPTableQA - [Inputs=$inputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    List<Map<String, dynamic>> inputParams = [];
    for (final input in inputs) {
      inputParams.add(input.toJson());
    }
    json[r'inputs'] = inputParams;
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPTableQA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPTableQA? fromJson(dynamic value) {
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

      return ApiQueryNLPTableQA(
          inputs: mapValueOfType<List<ApiTableQuery>>(json, r'inputs')!,
          options: mapValueOfType<InferenceOptions>(json, r'options')!);
    }
    return null;
  }

  static List<ApiQueryNLPTableQA> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPTableQA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPTableQA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPTableQA> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPTableQA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPTableQA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPTableQA-objects as value to a dart map
  static Map<String, List<ApiQueryNLPTableQA>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPTableQA>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPTableQA.listFromJson(
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
