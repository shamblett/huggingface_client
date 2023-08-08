/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

/// This task is well known to summarize longer text into shorter text. Be careful, some models
/// have a maximum length of input. That means that the summary cannot handle full books for instance.
/// Be careful when choosing your model.
///
class ApiQueryNLPSummarisation {
  /// Returns a new [ApiQueryNLPSummarisation] instance.
  ApiQueryNLPSummarisation(
      {required this.inputs,
      this.minLength = 0,
      this.maxLength = 0,
      this.topK = 0,
      this.topP = 0.0,
      this.temperature = 1.0,
      this.repetitionPenalty = -1.0,
      this.maxTime = -1.0,
      this.options});

  /// Strings to be summarised
  List<String> inputs;

  /// (Default: None). Integer to define the minimum length in tokens of the output summary.
  int minLength = 0;

  /// (Default: None). Integer to define the maximum length in tokens of the output summary.
  int maxLength = 0;

  /// (Default: None). Integer to define the top tokens considered within the sample operation to create new text.
  int topK = 0;

  /// (Default: None). Float to define the tokens that are within the sample operation of text generation.
  /// Add tokens in the sample for more probable to least probable until the sum of the probabilities
  /// is greater than top_p.
  double topP = 0.0;

  /// (Default: 1.0). Float (0.0-100.0). The temperature of the sampling operation. 1 means regular sampling,
  /// 0 means always take the highest score, 100.0 is getting closer to uniform probability.
  double temperature;

  /// (Default: None). Float (0.0-100.0). The more a token is used within generation the more it is penalized
  /// to not be picked in successive generation passes.
  double repetitionPenalty = -1.0;

  /// (Default: None). Float (0-120.0). The amount of time in seconds that the query should take maximum.
  /// Network can cause some overhead so it will be a soft limit.
  double maxTime;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPSummarisation && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPSummarisation[Inputs=$inputs, Min length=${minLength == 0 ? 'none' : minLength}, '
      'Max length=${maxLength == 0 ? 'none' : maxLength}, '
      'Top K=${topK == 0 ? 'none' : topK},'
      'Top P=${topP == 0.0 ? 'none' : topP.toStringAsFixed(3)},'
      'Temperature=${temperature.toStringAsFixed(3)},'
      'Repetition Penalty=${repetitionPenalty == -1.0 ? 'none' : repetitionPenalty.toStringAsFixed(3)},'
      'Max Time=${maxTime == -1.0 ? 'none' : maxTime.toStringAsFixed(3)},'
      'Options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    final parameters = <String, dynamic>{};
    if (minLength != 0) {
      parameters[r'min_length'] = minLength;
    }
    if (maxLength != 0) {
      parameters[r'max_length'] = maxLength;
    }
    if (topK != 0) {
      parameters[r'top_k'] = topK;
    }
    if (topP != 0.0) {
      parameters[r'top_p'] = topP;
    }
    if (temperature != 1.0) {
      parameters[r'temperature'] = temperature;
    }
    if (repetitionPenalty != -1.0) {
      parameters[r'repetition_penalty'] = repetitionPenalty;
    }
    if (maxTime != -1.0) {
      parameters[r'max_time'] = maxTime;
    }
    if (parameters.isNotEmpty) {
      json[r'parameters'] = parameters;
    }
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPSummarisation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPSummarisation? fromJson(dynamic value) {
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

      return ApiQueryNLPSummarisation(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          minLength: mapValueOfTypeWithDefault<int>(json, r'min_value', 0)!,
          maxLength: mapValueOfTypeWithDefault<int>(json, r'max_value', 0)!,
          topK: mapValueOfTypeWithDefault<int>(json, r'top_k', 0)!,
          topP: mapValueOfTypeWithDefault<double>(json, r'top_p', 0.0)!,
          temperature:
              mapValueOfTypeWithDefault<double>(json, r'temperature', 1.0)!,
          repetitionPenalty: mapValueOfTypeWithDefault<double>(
              json, r'repetition_penalty', -1.0)!,
          maxTime: mapValueOfTypeWithDefault<double>(json, r'max_time', -1.0)!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPSummarisation> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPSummarisation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPSummarisation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPSummarisation> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPSummarisation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPSummarisation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseError-objects as value to a dart map
  static Map<String, List<ApiQueryNLPSummarisation>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPSummarisation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPSummarisation.listFromJson(
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
