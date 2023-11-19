/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseNLPTranslation {
  /// Returns a new [ApiResponseNLPTranslation] instance.
  ApiResponseNLPTranslation({
    required this.translationText,
  });

  /// The string after translation.
  String translationText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPTranslation &&
          other.translationText == translationText;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (translationText.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPTranslation - [Translation Text=$translationText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'translation_text'] = translationText;
    return json;
  }

  /// Returns a new [ApiResponseNLPTranslation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPTranslation? fromJson(dynamic value) {
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

      return ApiResponseNLPTranslation(
        translationText: mapValueOfType<String>(json, r'translation_text')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPTranslation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPTranslation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPTranslation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPTranslation> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPTranslation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPTranslation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPTranslation-objects as value to a dart map
  static Map<String, List<ApiResponseNLPTranslation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPTranslation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPTranslation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'translation_text',
  };
}
