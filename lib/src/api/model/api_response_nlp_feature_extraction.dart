/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseNLPFeatureExtraction {
  /// Returns a new [ApiResponseNLPFeatureExtraction] instance.
  ApiResponseNLPFeatureExtraction({
    required this.representationFeatures,
  });

  /// The numbers that are the representation features of the input.
  List<double> representationFeatures;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPFeatureExtraction &&
          other.representationFeatures == representationFeatures;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (representationFeatures.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPFeatureExtraction - [Representation Features=$representationFeatures]';

  List<double> toJson() => representationFeatures;

  /// Returns a new [ApiResponseNLPFeatureExtraction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPFeatureExtraction? fromJson(dynamic value) {
    if (value is List) {
      return ApiResponseNLPFeatureExtraction(
          representationFeatures: value.cast<double>());
    }
    return null;
  }

  static List<ApiResponseNLPFeatureExtraction> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPFeatureExtraction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPFeatureExtraction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
