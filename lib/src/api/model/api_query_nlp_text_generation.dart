/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

/// Use to continue text from a prompt. This is a very generic task.
///
class ApiQueryNLPTextGeneration {
  /// Returns a new [ApiQueryNLPTextGeneration] instance.
  ApiQueryNLPTextGeneration(
      {required this.inputs,
      this.topK = 0,
      this.topP = 0.0,
      this.temperature = 1.0,
      this.repetitionPenalty = -1.0,
      this.maxNewTokens = -1,
      this.maxTime = -1.0,
      this.returnFullText = true,
      this.numReturnSequences = 1,
      this.doSample = true,
      this.options});

  /// Strings to be generated from
  String inputs;

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

  /// (Default: None). Int (0-250). The amount of new tokens to be generated, this does not include the input
  /// length it is a estimate of the size of generated text you want. Each new tokens slows down the request,
  /// so look for balance between response times and length of text generated.
  int maxNewTokens = -1;

  /// (Default: None). Float (0-120.0). The amount of time in seconds that the query should take maximum.
  /// Network can cause some overhead so it will be a soft limit. Use that in combination
  /// with [maxNewTokens] for best results.
  double maxTime = -1.0;

  /// (Default: True). Bool. If set to False, the return results will not contain the
  /// original query making it easier for prompting.
  bool returnFullText = true;

  /// (Default: 1). Integer. The number of proposition you want to be returned.
  int numReturnSequences;

  /// (Optional: True). Bool. Whether or not to use sampling, use greedy
  /// decoding otherwise
  bool doSample = true;

  /// (optional: False) Request stream response
  bool stream = false;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPTextGeneration && other.inputs == inputs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() => 'ApiQueryNLPTextGeneration - [Inputs=$inputs, '
      'Top K=${topK == 0 ? 'none' : topK}, '
      'Top P=${topP == 0.0 ? 'none' : topP.toStringAsFixed(3)}, '
      'Temperature=${temperature.toStringAsFixed(3)}, '
      'Repetition Penalty=${repetitionPenalty == -1.0 ? 'none' : repetitionPenalty.toStringAsFixed(3)}, '
      'Max New Tokens=${maxNewTokens == -1 ? 'none' : maxNewTokens}, '
      'Max Time=${maxTime == -1.0 ? 'none' : maxTime.toStringAsFixed(3)}, '
      'Return Full Text=${returnFullText ? 'true' : 'false'}, '
      'Num Return Sequences=$numReturnSequences, '
      'Do Sample=${doSample ? 'true' : 'false'}, '
      'Options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    final parameters = <String, dynamic>{};
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
    if (maxNewTokens != -1) {
      parameters[r'max_new_tokens'] = maxNewTokens;
    }
    if (maxTime != -1.0) {
      parameters[r'max_time'] = maxTime;
    }
    if (!returnFullText) {
      parameters[r'return_full_text'] = false;
    }
    if (numReturnSequences != 1) {
      parameters[r'num_return_sequences'] = numReturnSequences;
    }
    if (!doSample) {
      parameters[r'doSample'] = false;
    }
    if (parameters.isNotEmpty) {
      json[r'parameters'] = parameters;
    }
    json[r'options'] = options?.toJson();
    json[r'stream'] = stream;
    return json;
  }

  /// Returns a new [ApiQueryNLPTextGeneration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPTextGeneration? fromJson(dynamic value) {
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

      return ApiQueryNLPTextGeneration(
          inputs: mapValueOfType<String>(json, r'inputs')!,
          topK: mapValueOfTypeWithDefault<int>(json, r'top_k', 0)!,
          topP: mapValueOfTypeWithDefault<double>(json, r'top_p', 0.0)!,
          temperature:
              mapValueOfTypeWithDefault<double>(json, r'temperature', 1.0)!,
          repetitionPenalty: mapValueOfTypeWithDefault<double>(
              json, r'repetition_penalty', -1.0)!,
          maxNewTokens:
              mapValueOfTypeWithDefault<int>(json, r'max_new_tokens', -1)!,
          maxTime: mapValueOfTypeWithDefault<double>(json, r'max_time', -1.0)!,
          returnFullText:
              mapValueOfTypeWithDefault<bool>(json, r'return_full_text', true)!,
          numReturnSequences:
              mapValueOfTypeWithDefault<int>(json, r'num_return_sequences', 1)!,
          doSample: mapValueOfTypeWithDefault<bool>(json, r'do_sample', true)!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPTextGeneration> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPTextGeneration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPTextGeneration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPTextGeneration> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPTextGeneration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPTextGeneration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseError-objects as value to a dart map
  static Map<String, List<ApiQueryNLPTextGeneration>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPTextGeneration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPTextGeneration.listFromJson(
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
