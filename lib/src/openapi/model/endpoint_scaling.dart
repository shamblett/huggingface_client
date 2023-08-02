//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointScaling {
  /// Returns a new [EndpointScaling] instance.
  EndpointScaling({
    required this.maxReplica,
    required this.minReplica,
  });

  /// Maximum number of endpoint replica
  ///
  /// Minimum value: 0
  int maxReplica;

  /// Minimum number of endpoint replica
  ///
  /// Minimum value: 0
  int minReplica;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointScaling &&
          other.maxReplica == maxReplica &&
          other.minReplica == minReplica;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (maxReplica.hashCode) + (minReplica.hashCode);

  @override
  String toString() =>
      'EndpointScaling[maxReplica=$maxReplica, minReplica=$minReplica]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'maxReplica'] = maxReplica;
    json[r'minReplica'] = minReplica;
    return json;
  }

  /// Returns a new [EndpointScaling] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointScaling? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointScaling[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointScaling[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointScaling(
        maxReplica: mapValueOfType<int>(json, r'maxReplica')!,
        minReplica: mapValueOfType<int>(json, r'minReplica')!,
      );
    }
    return null;
  }

  static List<EndpointScaling> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointScaling>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointScaling.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointScaling> mapFromJson(dynamic json) {
    final map = <String, EndpointScaling>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointScaling.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointScaling-objects as value to a dart map
  static Map<String, List<EndpointScaling>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointScaling>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointScaling.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'maxReplica',
    'minReplica',
  };
}
