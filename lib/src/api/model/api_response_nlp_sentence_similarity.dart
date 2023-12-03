/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

class ApiResponseNLPSentenceSimilarity {
  /// Returns a new [ApiResponseNLPSentenceSimilarity] instance.
  ApiResponseNLPSentenceSimilarity({
    required this.scores,
  });

  /// The associated similarity score for each of the given strings.
  List<double> scores;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPSentenceSimilarity && other.scores == scores;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (scores.hashCode);

  @override
  String toString() => 'ApiResponseNLPSentenceSimilarity - [Scores=$scores]';

  List<double> toJson() => scores;

  /// Returns a new [ApiResponseNLPSentenceSimilarity] instance and imports its values from
  /// [value] if it's a [List], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPSentenceSimilarity? fromJson(dynamic value) {
    if (value is List) {
      return ApiResponseNLPSentenceSimilarity(scores: value.cast<double>());
    }
    return null;
  }
}
