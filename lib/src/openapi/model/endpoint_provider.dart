//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointProvider {
  /// Returns a new [EndpointProvider] instance.
  EndpointProvider({
    required this.region,
    required this.vendor,
  });

  /// Provider region
  String region;

  /// Provider vendor
  String vendor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointProvider &&
          other.region == region &&
          other.vendor == vendor;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (region.hashCode) + (vendor.hashCode);

  @override
  String toString() => 'EndpointProvider[region=$region, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'region'] = region;
    json[r'vendor'] = vendor;
    return json;
  }

  /// Returns a new [EndpointProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointProvider[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointProvider[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointProvider(
        region: mapValueOfType<String>(json, r'region')!,
        vendor: mapValueOfType<String>(json, r'vendor')!,
      );
    }
    return null;
  }

  static List<EndpointProvider> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointProvider> mapFromJson(dynamic json) {
    final map = <String, EndpointProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointProvider-objects as value to a dart map
  static Map<String, List<EndpointProvider>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointProvider.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'region',
    'vendor',
  };
}
