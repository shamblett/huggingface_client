/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseAudioASR {
  /// Returns a new [ApiResponseAudioASR] instance.
  ApiResponseAudioASR({
    required this.text,
  });

  /// The string that was recognized within the audio file.
  String text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseAudioASR && other.text == text;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (text.hashCode);

  @override
  String toString() => 'ApiResponseAudioASR - [Text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'text'] = text;
    return json;
  }

  /// Returns a new [ApiResponseAudioASR] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseAudioASR? fromJson(dynamic value) {
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

      return ApiResponseAudioASR(
        text: mapValueOfType<String>(json, r'text')!,
      );
    }
    return null;
  }

  static List<ApiResponseAudioASR> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseAudioASR>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseAudioASR.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseAudioASR> mapFromJson(dynamic json) {
    final map = <String, ApiResponseAudioASR>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseAudioASR.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPSummarisation-objects as value to a dart map
  static Map<String, List<ApiResponseAudioASR>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseAudioASR>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseAudioASR.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
  };
}
