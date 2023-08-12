/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

/// This task corresponds to any chatbot like structure. Models tend to have shorter max_length,
/// so please check with caution when using a given model if you need long range
/// dependency or not.
///
class ApiQueryNLPConversational {
  /// Returns a new [ApiQueryNLPConversational] instance.
  ApiQueryNLPConversational(
      {required this.text,
      required this.generatedResponses,
      required this.pastUserInputs,
      this.minLength = 0,
      this.maxLength = 0,
      this.topK = 0,
      this.topP = 0.0,
      this.temperature = 1.0,
      this.repetitionPenalty = -1.0,
      this.maxTime = -1.0,
      this.options});

  /// The last input from the user in the conversation.
  String text;

  /// A list of strings corresponding to the earlier replies from the model.
  List<String> generatedResponses;

  /// A list of strings corresponding to the earlier replies from the user.
  /// Should be of the same length of [generatedResponses].
  List<String> pastUserInputs;

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
      other is ApiQueryNLPConversational && other.text == text;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (text.hashCode);

  @override
  String toString() => 'ApiQueryNLPConversational - [Text=$text, '
      'Generated Responses=$generatedResponses, '
      'PastUserInputs=$pastUserInputs, '
      'Min length=${minLength == 0 ? 'none' : minLength}, '
      'Max length=${maxLength == 0 ? 'none' : maxLength}, '
      'Top K=${topK == 0 ? 'none' : topK},'
      'Top P=${topP == 0.0 ? 'none' : topP.toStringAsFixed(3)},'
      'Temperature=${temperature.toStringAsFixed(3)},'
      'Repetition Penalty=${repetitionPenalty == -1.0 ? 'none' : repetitionPenalty.toStringAsFixed(3)},'
      'Max Time=${maxTime == -1.0 ? 'none' : maxTime.toStringAsFixed(3)},'
      'Options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'text'] = text;
    json[r'generated_responses'] = generatedResponses;
    json[r'past_user_inputs'] = pastUserInputs;
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

  /// Returns a new [ApiQueryNLPConversational] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPConversational? fromJson(dynamic value) {
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

      return ApiQueryNLPConversational(
          text: mapValueOfType<String>(json, r'inputs')!,
          generatedResponses:
              mapValueOfType<List<String>>(json, r'generated_responses')!,
          pastUserInputs:
              mapValueOfType<List<String>>(json, r'past_user_inputs')!,
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

  static List<ApiQueryNLPConversational> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPConversational>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPConversational.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPConversational> mapFromJson(dynamic json) {
    final map = <String, ApiQueryNLPConversational>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPConversational.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPConversational-objects as value to a dart map
  static Map<String, List<ApiQueryNLPConversational>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPConversational>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPConversational.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'generated_responses',
    'past_user_inputs'
  };
}
