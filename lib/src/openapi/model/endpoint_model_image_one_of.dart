//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointModelImageOneOf {
  /// Returns a new [EndpointModelImageOneOf] instance.
  EndpointModelImageOneOf({
    required this.huggingface,
  });

  /// Model served by an Hugging Face container
  Object huggingface;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointModelImageOneOf && other.huggingface == huggingface;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (huggingface.hashCode);

  @override
  String toString() => 'EndpointModelImageOneOf[huggingface=$huggingface]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'huggingface'] = huggingface;
    return json;
  }

  /// Returns a new [EndpointModelImageOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelImageOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointModelImageOneOf[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointModelImageOneOf[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointModelImageOneOf(
        huggingface: mapValueOfType<Object>(json, r'huggingface')!,
      );
    }
    return null;
  }

  static List<EndpointModelImageOneOf> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointModelImageOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelImageOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelImageOneOf> mapFromJson(dynamic json) {
    final map = <String, EndpointModelImageOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelImageOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelImageOneOf-objects as value to a dart map
  static Map<String, List<EndpointModelImageOneOf>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointModelImageOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelImageOneOf.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'huggingface',
  };
}
