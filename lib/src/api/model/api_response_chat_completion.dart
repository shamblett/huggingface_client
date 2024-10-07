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
///
///
///

class Message {
  final String role;
  final String content;

  Message({required this.role, required this.content});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(role: json["role"], content: json["content"]);
  }
}

class Conversation {
  /// List of strings. The last inputs from the user in the conversation,
  /// after the model has run.

  final int index;
  final Message message;
  final String finishReason;

  Conversation(
      {required this.index, required this.message, required this.finishReason});

  /// List of strings. The last outputs from the model in the conversation,
  /// after the model has run.

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Conversation && other.message.content == message.content;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (message.content.hashCode);

  @override
  String toString() =>
      'InferenceConversation - [Past User Inputs=${message.content}, '
      'Generated Responses=$finishReason,index $index]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'message'] = message;
    json[r'index'] = index;
    json[r'finsh_reason'] = finishReason;

    return json;
  }

  /// Returns a new [InferenceConversation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Conversation? fromJson(dynamic value) {
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

      return Conversation(
          message: Message.fromJson(json["message"]),
          index: mapValueOfType<int>(json, r'index')!,
          finishReason: mapValueOfType<String>(json, r'finish_reason')!);
    }
    return null;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'index',
    'finish_reason',
  };
}

class ApiResponseNLPChatCompletion {
  /// Returns a new [ApiResponseNLPChatCompletion] instance.
  ApiResponseNLPChatCompletion({required this.choices});

  /// The answer of the bot.
  final List<Conversation> choices;

  /// A facility dictionary to send back for the next input (with the new
  /// user input addition).

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPChatCompletion && other.choices == choices;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (choices.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPChatCompletionl - [Generated Text=$choices, Conversation=';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'chioces'] = choices;

    return json;
  }

  /// Returns a new [ApiResponseNLPChatCompletion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPChatCompletion? fromJson(dynamic value) {
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

      return ApiResponseNLPChatCompletion(
          choices: (json["choices"] as List)
              .map((e) => Conversation.fromJson(e)!)
              .toList());
    }
    return null;
  }

  static List<ApiResponseNLPChatCompletion> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPChatCompletion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPChatCompletion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPChatCompletion> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPChatCompletion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPChatCompletion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPConversational-objects as value to a dart map
  static Map<String, List<ApiResponseNLPChatCompletion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPChatCompletion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPChatCompletion.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'choices',
  };
}

class ChatStreamResponse {
  final Delta delta;

  ChatStreamResponse({required this.delta});
  ChatStreamResponse fromMap(Map<String, dynamic> map) =>
      ChatStreamResponse.fromJson(map);
  factory ChatStreamResponse.fromJson(Map<String, dynamic> json) {
    final map = (json["choices"][0])["delta"];

    return ChatStreamResponse(delta: Delta.fromJson(map));
  }
}

class Delta {
  final String content;
  final String role;
  Delta({required this.role, required this.content});
  factory Delta.fromJson(Map<String, dynamic> json) {
    return Delta(role: json["role"], content: json["content"]);
  }
}
