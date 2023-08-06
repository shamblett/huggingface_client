/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class ApiResponseQueryNLPSummarisation {
  /// Returns a new [ApiResponseQueryNLPSummarisation] instance.
  ApiResponseQueryNLPSummarisation({
    required this.summaryText,
  });

  /// The string after summarization.
  String summaryText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseQueryNLPSummarisation &&
          other.summaryText == summaryText;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (summaryText.hashCode);

  @override
  String toString() =>
      'ApiResponseQueryNLPSummarisation - [Summary Text=$summaryText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'summary_text'] = summaryText;
    return json;
  }

  /// Returns a new [ApiResponseQueryNLPSummarisation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseQueryNLPSummarisation? fromJson(dynamic value) {
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

      return ApiResponseQueryNLPSummarisation(
        summaryText: mapValueOfType<String>(json, r'generated_text')!,
      );
    }
    return null;
  }

  static List<ApiResponseQueryNLPSummarisation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseQueryNLPSummarisation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseQueryNLPSummarisation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseQueryNLPSummarisation> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseQueryNLPSummarisation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseQueryNLPSummarisation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseQueryStandard-objects as value to a dart map
  static Map<String, List<ApiResponseQueryNLPSummarisation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseQueryNLPSummarisation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseQueryNLPSummarisation.listFromJson(
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
