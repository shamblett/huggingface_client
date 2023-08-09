/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

/// Usually used for sentence parsing, either grammatical, or Named Entity
/// Recognition (NER) to understand keywords contained within text.
///
class ApiQueryNLPTokenClassification {
  /// Returns a new [ApiQueryNLPTokenClassification] instance.
  ApiQueryNLPTokenClassification(
      {required this.inputs,
      this.aggregationStrategy = aggregationStrategySimple,
      this.options});

  static const aggregationStrategyNone = 'none';
  static const aggregationStrategySimple = 'simple';
  static const aggregationStrategyFirst = 'first';
  static const aggregationStrategyAverage = 'average';
  static const aggregationStrategyMax = 'max';

  /// Strings to be classified
  List<String> inputs;

  /// (Default: simple). There are several aggregation strategies:
  ///
  /// none: Every token gets classified without further aggregation.
  ///
  /// simple: Entities are grouped according to the default schema
  /// (B-, I- tags get merged when the tag is similar).
  ///
  /// first: Same as the simple strategy except words cannot end up with different tags.
  /// Words will use the tag of the first token when there is ambiguity.
  ///
  /// average: Same as the simple strategy except words cannot end up with different tags.
  /// Scores are averaged across tokens and then the maximum label is applied.
  ///
  /// max: Same as the simple strategy except words cannot end up with different tags.
  /// Word entity will be the token with the maximum score.
  String aggregationStrategy = aggregationStrategySimple;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPTokenClassification && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPTokenClassification - [Inputs=$inputs, Aggregation Strategy=$aggregationStrategy, Options=$options}]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    if (aggregationStrategy != aggregationStrategySimple) {
      json[r'aggregation_strategy'] = aggregationStrategy;
    }
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPTokenClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPTokenClassification? fromJson(dynamic value) {
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

      return ApiQueryNLPTokenClassification(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          aggregationStrategy: mapValueOfTypeWithDefault<String>(
              json, r'aggregation_strategy', aggregationStrategySimple)!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPTokenClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPTokenClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPTokenClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPTokenClassification> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPTokenClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPTokenClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPTokenClassification-objects as value to a dart map
  static Map<String, List<ApiQueryNLPTokenClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPTokenClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPTokenClassification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'inputs'};
}
