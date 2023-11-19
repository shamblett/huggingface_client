/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseVisionImageSegmentation {
  /// Returns a new [ApiResponseVisionImageSegmentation] instance.
  ApiResponseVisionImageSegmentation(
      {required this.label, required this.score, required this.mask});

  /// The label for the class (model specific).
  String label;

  /// A float that represents how likely it is that the image file belongs to this class.
  double score;

  /// A base64 str of a single channel black-and-white img representing the mask
  /// of a segment.
  String mask;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseVisionImageSegmentation && other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode);

  @override
  String toString() => 'ApiResponseVisionImageSegmentation - [Label=$label, '
      'Score=${score.toStringAsFixed(3)}, Mask=${mask.substring(0, 20)}...]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = label;
    json[r'score'] = score;
    json[r'mask'] = mask;
    return json;
  }

  /// Returns a new [ApiResponseVisionImageSegmentation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseVisionImageSegmentation? fromJson(dynamic value) {
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

      return ApiResponseVisionImageSegmentation(
          label: mapValueOfType<String>(json, r'label')!,
          score: mapValueOfType<double>(json, r'score')!,
          mask: mapValueOfType<String>(json, r'mask')!);
    }
    return null;
  }

  static List<ApiResponseVisionImageSegmentation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseVisionImageSegmentation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseVisionImageSegmentation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseVisionImageSegmentation> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseVisionImageSegmentation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseVisionImageSegmentation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseVisionImageSegmentation-objects as value to a dart map
  static Map<String, List<ApiResponseVisionImageSegmentation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseVisionImageSegmentation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseVisionImageSegmentation.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'label', 'score', 'mask'};
}
