//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiResponseError {
  /// Returns a new [ApiResponseError] instance.
  ApiResponseError({
    required this.error,
  });

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiResponseError &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode);

  @override
  String toString() => 'ApiResponseError[error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [ApiResponseError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiResponseError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiResponseError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiResponseError(
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<ApiResponseError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiResponseError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseError> mapFromJson(dynamic json) {
    final map = <String, ApiResponseError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseError-objects as value to a dart map
  static Map<String, List<ApiResponseError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiResponseError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
  };
}

