//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class EndpointModelImageUpdate {
  /// Returns a new [EndpointModelImageUpdate] instance.
  EndpointModelImageUpdate({
    required this.huggingface,
    required this.custom,
  });

  /// Model served by an Hugging Face container
  Object huggingface;

  EndpointModelImageUpdateOneOfCustom custom;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointModelImageUpdate &&
          other.huggingface == huggingface &&
          other.custom == custom;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (huggingface.hashCode) + (custom.hashCode);

  @override
  String toString() =>
      'EndpointModelImageUpdate[huggingface=$huggingface, custom=$custom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'huggingface'] = huggingface;
    json[r'custom'] = custom;
    return json;
  }

  /// Returns a new [EndpointModelImageUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelImageUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointModelImageUpdate[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointModelImageUpdate[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointModelImageUpdate(
        huggingface: mapValueOfType<Object>(json, r'huggingface')!,
        custom: EndpointModelImageUpdateOneOfCustom.fromJson(json[r'custom'])!,
      );
    }
    return null;
  }

  static List<EndpointModelImageUpdate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointModelImageUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelImageUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelImageUpdate> mapFromJson(dynamic json) {
    final map = <String, EndpointModelImageUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelImageUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelImageUpdate-objects as value to a dart map
  static Map<String, List<EndpointModelImageUpdate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointModelImageUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelImageUpdate.listFromJson(
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
