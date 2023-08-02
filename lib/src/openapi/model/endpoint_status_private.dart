//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointStatusPrivate {
  /// Returns a new [EndpointStatusPrivate] instance.
  EndpointStatusPrivate({
    this.serviceName,
  });

  /// VPC service name used to add the private link
  String? serviceName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointStatusPrivate && other.serviceName == serviceName;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (serviceName == null ? 0 : serviceName!.hashCode);

  @override
  String toString() => 'EndpointStatusPrivate[serviceName=$serviceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serviceName != null) {
      json[r'serviceName'] = serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointStatusPrivate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointStatusPrivate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointStatusPrivate[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointStatusPrivate[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointStatusPrivate(
        serviceName: mapValueOfType<String>(json, r'serviceName'),
      );
    }
    return null;
  }

  static List<EndpointStatusPrivate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointStatusPrivate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointStatusPrivate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointStatusPrivate> mapFromJson(dynamic json) {
    final map = <String, EndpointStatusPrivate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointStatusPrivate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointStatusPrivate-objects as value to a dart map
  static Map<String, List<EndpointStatusPrivate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointStatusPrivate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointStatusPrivate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
