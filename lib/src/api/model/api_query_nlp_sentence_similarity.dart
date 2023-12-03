/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

/// Calculate the semantic similarity between one text and a list of other
/// sentences by comparing their embeddings.
///
class ApiQueryNLPSentenceSimilarity {
  /// Returns a new [ApiQueryNLPSentenceSimilarity] instance.
  ApiQueryNLPSentenceSimilarity(
      {required this.sourceSentence, required this.sentences, this.options});

  /// The string that you wish to compare the other strings with. This can be a phrase,
  /// sentence, or longer passage, depending on the model being used.
  String sourceSentence;

  /// A list of strings which will be compared against the [sourceSentence].
  List<String> sentences;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPSentenceSimilarity &&
          other.sourceSentence == sourceSentence;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sourceSentence.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPSentenceSimilarity - [Source Sentence=$sourceSentence, Sentences=$sentences, Options=$options}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    Map<String, dynamic> inputParams = {
      'source_sentence': sourceSentence,
      'sentences': sentences
    };
    json[r'inputs'] = inputParams;
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPSentenceSimilarity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPSentenceSimilarity? fromJson(dynamic value) {
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

      return ApiQueryNLPSentenceSimilarity(
          sourceSentence: mapValueOfType<String>(json, r'source_sentence')!,
          sentences: mapValueOfType<List<String>>(json, r'sentences')!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPSentenceSimilarity> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPSentenceSimilarity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPSentenceSimilarity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPSentenceSimilarity> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPSentenceSimilarity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPSentenceSimilarity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPSentenceSimilarity-objects as value to a dart map
  static Map<String, List<ApiQueryNLPSentenceSimilarity>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPSentenceSimilarity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPSentenceSimilarity.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'source_sentence', 'sentences'};
}
