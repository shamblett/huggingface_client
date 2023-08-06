/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiResponseNLPSummarisation {
  /// Returns a new [ApiResponseNLPSummarisation] instance.
  ApiResponseNLPSummarisation({
    required this.summaryText,
  });

  /// The string after summarization.
  String summaryText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPSummarisation && other.summaryText == summaryText;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (summaryText.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPSummarisation - [Summary Text=$summaryText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'summary_text'] = summaryText;
    return json;
  }

  /// Returns a new [ApiResponseNLPSummarisation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPSummarisation? fromJson(dynamic value) {
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

      return ApiResponseNLPSummarisation(
        summaryText: mapValueOfType<String>(json, r'summary_text')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPSummarisation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPSummarisation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPSummarisation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPSummarisation> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPSummarisation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPSummarisation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPSummarisation-objects as value to a dart map
  static Map<String, List<ApiResponseNLPSummarisation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPSummarisation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPSummarisation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'summary_text',
  };
}
