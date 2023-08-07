/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiResponseNLPTableQA {
  /// Returns a new [ApiResponseNLPTableQA] instance.
  ApiResponseNLPTableQA(
      {required this.answer,
      required this.coordinates,
      required this.cells,
      required this.aggregator});

  /// The plaintext answer.
  String answer;

  /// A list of coordinates of the cells referenced in the answer.
  List<List<int>> coordinates;

  /// A list of coordinates of the cells contents.
  List<String> cells;

  /// The aggregator used to get the answer.
  String aggregator;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPTableQA && other.answer == answer;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (answer.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPTableQA - [Answer=$answer, Coordinates=$coordinates, Cells=$cells, Aggregator=$aggregator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'answer'] = answer;
    json[r'coordinates'] = coordinates;
    json[r'cells'] = cells;
    json[r'aggregator'] = aggregator;
    return json;
  }

  /// Returns a new [ApiResponseNLPTableQA] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPTableQA? fromJson(dynamic value) {
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

      return ApiResponseNLPTableQA(
        answer: mapValueOfType<String>(json, r'answer')!,
        coordinates: mapValueOfType<List<List<int>>>(json, r'coordinates')!,
        cells: mapValueOfType<List<String>>(json, r'cells')!,
        aggregator: mapValueOfType<String>(json, r'aggregator')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPTableQA> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPTableQA>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPTableQA.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPTableQA> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPTableQA>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPTableQA.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPFillMask-objects as value to a dart map
  static Map<String, List<ApiResponseNLPTableQA>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPTableQA>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPTableQA.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'answer',
    'coordinates',
    'cells',
    'aggregator'
  };
}
