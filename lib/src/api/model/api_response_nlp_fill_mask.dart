/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

class ApiResponseNLPFillMask {
  /// Returns a new [ApiResponseNLPFillMask] instance.
  ApiResponseNLPFillMask(
      {required this.sequence,
      required this.score,
      required this.token,
      required this.tokenStr});

  /// The actual sequence of tokens that ran against the model (may contain special tokens)
  String sequence;

  /// The probability for this token.
  double score;

  /// The id of the token
  int token;

  /// The string representation of the token
  String tokenStr;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResponseNLPFillMask && other.sequence == sequence;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sequence.hashCode);

  @override
  String toString() =>
      'ApiResponseNLPFillMask - [Sequence=$sequence, Score=$score, Token=$token, Token String=$tokenStr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'sequnce'] = sequence;
    json[r'score'] = score;
    json[r'token'] = token;
    json[r'token_str'] = tokenStr;
    return json;
  }

  /// Returns a new [ApiResponseNLPFillMask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponseNLPFillMask? fromJson(dynamic value) {
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

      return ApiResponseNLPFillMask(
        sequence: mapValueOfType<String>(json, r'sequence')!,
        score: mapValueOfType<double>(json, r'score')!,
        token: mapValueOfType<int>(json, r'token')!,
        tokenStr: mapValueOfType<String>(json, r'token_str')!,
      );
    }
    return null;
  }

  static List<ApiResponseNLPFillMask> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiResponseNLPFillMask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseNLPFillMask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponseNLPFillMask> mapFromJson(dynamic json) {
    final map = <String, ApiResponseNLPFillMask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponseNLPFillMask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponseNLPFillMask-objects as value to a dart map
  static Map<String, List<ApiResponseNLPFillMask>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiResponseNLPFillMask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiResponseNLPFillMask.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sequence',
    'score',
    'token',
    'token_str'
  };
}
