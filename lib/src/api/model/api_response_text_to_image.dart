/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseTextToImage {
  /// Returns a new [ApiResponseTextToImage] instance.
  ApiResponseTextToImage({required this.inputs});

  /// The input image genration;
  String inputs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseTextToImage && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() => 'ApiResponseTextToImage - [Inputs=$inputs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;

    return json;
  }

  /// Returns a new [ApiResponseTextToImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseTextToImage? fromJson(dynamic value) {
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

      return ApiResponseTextToImage(
        inputs: mapValueOfType<String>(json, r'inputs')!,
      );
    }
    return null;
  }

  static List<ApiResponseTextToImage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseTextToImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseTextToImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseTextToImage> mapFromJson(dynamic json) {
    final map = <String, ApiResponseTextToImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseTextToImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseVisionImageClassification-objects as value to a dart map
  static Map<String, List<ApiResponseTextToImage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseTextToImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseTextToImage.listFromJson(
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
