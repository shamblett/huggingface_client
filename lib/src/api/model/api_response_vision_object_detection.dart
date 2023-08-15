/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

///
/// Represents the bounding box of a detected object.
class ImageBox {
  ImageBox(
      {required this.xMin,
      required this.xMax,
      required this.yMin,
      required this.yMax});

  int xMin;

  int xMax;

  int yMin;

  int yMax;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageBox &&
          (other.xMax == xMax) &&
          (other.xMin == xMin) &&
          (other.yMax == yMax) &&
          (other.yMin == yMin);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (xMin.hashCode * xMax.hashCode * yMax.hashCode * yMin.hashCode);

  @override
  String toString() =>
      'ImageBox - [X Min=$xMin, X Max=$xMax, Y Min=$yMin, Y Max=$yMax]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'xmin'] = xMin;
    json[r'xmax'] = xMax;
    json[r'ymin'] = yMin;
    json[r'ymax'] = yMax;
    return json;
  }

  /// Returns a new [ImageBox] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageBox? fromJson(dynamic value) {
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

      return ImageBox(
          xMin: mapValueOfType<int>(json, r'xmin')!,
          xMax: mapValueOfType<int>(json, r'xmax')!,
          yMin: mapValueOfType<int>(json, r'ymin')!,
          yMax: mapValueOfType<int>(json, r'ymax')!);
    }
    return null;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'xmin', 'xmax', 'ymin', 'ymax'};
}

class ApiResponseVisionObjectDetection {
  /// Returns a new [ApiResponseVisionObjectDetection] instance.
  ApiResponseVisionObjectDetection(
      {required this.label, required this.score, required this.box});

  /// The label for the class (model specific).
  String label;

  /// A float that represents how likely it is that the image file belongs to this class.
  double score;

  /// The bounding box of a detected object.
  ImageBox box;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseVisionObjectDetection && other.label == label;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode);

  @override
  String toString() =>
      'ApiResponseVisionImageClassification - [Label=$label, Score=${score.toStringAsFixed(3)}, Box=$box]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = label;
    json[r'score'] = score;
    json[r'box'] = box.toJson();
    return json;
  }

  /// Returns a new [ApiResponseVisionObjectDetection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseVisionObjectDetection? fromJson(dynamic value) {
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

      return ApiResponseVisionObjectDetection(
          label: mapValueOfType<String>(json, r'label')!,
          score: mapValueOfType<double>(json, r'score')!,
          box: ImageBox.fromJson(json[r'box'])!);
    }
    return null;
  }

  static List<ApiResponseVisionObjectDetection> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseVisionObjectDetection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseVisionObjectDetection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseVisionObjectDetection> mapFromJson(
      dynamic json) {
    final map = <String, ApiResponseVisionObjectDetection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseVisionObjectDetection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseVisionObjectDetection-objects as value to a dart map
  static Map<String, List<ApiResponseVisionObjectDetection>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseVisionObjectDetection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseVisionObjectDetection.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'label', 'score', 'box'};
}
