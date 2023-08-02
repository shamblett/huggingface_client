//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointModelImage {
  /// Returns a new [EndpointModelImage] instance.
  EndpointModelImage({
    required this.huggingface,
    required this.custom,
  });

  /// Model served by an Hugging Face container
  Object huggingface;

  EndpointModelImageOneOf1Custom custom;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointModelImage &&
          other.huggingface == huggingface &&
          other.custom == custom;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (huggingface.hashCode) + (custom.hashCode);

  @override
  String toString() =>
      'EndpointModelImage[huggingface=$huggingface, custom=$custom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'huggingface'] = huggingface;
    json[r'custom'] = custom;
    return json;
  }

  /// Returns a new [EndpointModelImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointModelImage[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointModelImage[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointModelImage(
        huggingface: mapValueOfType<Object>(json, r'huggingface')!,
        custom: EndpointModelImageOneOf1Custom.fromJson(json[r'custom'])!,
      );
    }
    return null;
  }

  static List<EndpointModelImage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointModelImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelImage> mapFromJson(dynamic json) {
    final map = <String, EndpointModelImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelImage-objects as value to a dart map
  static Map<String, List<EndpointModelImage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointModelImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelImage.listFromJson(
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
    'custom',
  };
}
