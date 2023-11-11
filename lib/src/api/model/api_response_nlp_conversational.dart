/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

/// A facility dictionary to send back for the next input (with the new
/// user input addition).
///
class InferenceConversation {
  InferenceConversation(
      {required this.pastUserInputs, required this.generatedResponses});

  /// List of strings. The last inputs from the user in the conversation,
  /// after the model has run.
  List<dynamic> pastUserInputs;

  /// List of strings. The last outputs from the model in the conversation,
  /// after the model has run.
  List<dynamic> generatedResponses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InferenceConversation &&
          other.generatedResponses == generatedResponses;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (generatedResponses.hashCode);

  @override
  String toString() =>
      'InferenceConversation - [Past User Inputs=$pastUserInputs, '
      'Generated Responses=$generatedResponses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'past_user_inputs'] = pastUserInputs;
    json[r'generated_responses'] = generatedResponses;
    return json;
  }

  /// Returns a new [InferenceConversation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InferenceConversation? fromJson(dynamic value) {
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

      return InferenceConversation(
        pastUserInputs:
            mapValueOfType<List<dynamic>>(json, r'past_user_inputs')!,
        generatedResponses:
            mapValueOfType<List<dynamic>>(json, r'generated_responses')!,
      );
    }
    return null;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'past_user_inputs',
    'generated_responses'
  };
}

class ApiResponseNLPConversational {
  /// Returns a new [ApiResponseNLPConversational] instance.
  ApiResponseNLPConversational(
      {required this.generatedText, required this.conversation});

  /// The answer of the bot.
  String generatedText;

  /// A facility dictionary to send back for the next input (with the new
  /// user input addition).
  InferenceConversation? conversation;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPConversational &&
          other.generatedText == generatedText;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (generatedText.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPConversational - [Generated Text=$generatedText, Conversation=$conversation';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'generated_text'] = generatedText;
    json[r'conversation'] = conversation?.toJson();
    return json;
  }

  /// Returns a new [ApiResponseNLPConversational] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPConversational? fromJson(dynamic value) {
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

      return ApiResponseNLPConversational(
          generatedText: mapValueOfType<String>(json, r'generated_text')!,
          conversation: InferenceConversation.fromJson(json[r'conversation']!));
    }
    return null;
  }

  static List<ApiResponseNLPConversational> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPConversational>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPConversational.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPConversational> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPConversational>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPConversational.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPConversational-objects as value to a dart map
  static Map<String, List<ApiResponseNLPConversational>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPConversational>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPConversational.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'generated_text', 'conversation'};
}
