//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class Vendors {
  /// Returns a new [Vendors] instance.
  Vendors({
    this.vendors = const [],
  });

  /// Vendors list
  List<Vendor> vendors;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Vendors && other.vendors == vendors;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (vendors.hashCode);

  @override
  String toString() => 'Vendors[vendors=$vendors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'vendors'] = vendors;
    return json;
  }

  /// Returns a new [Vendors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vendors? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "Vendors[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Vendors[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return Vendors(
        vendors: Vendor.listFromJson(json[r'vendors']),
      );
    }
    return null;
  }

  static List<Vendors> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Vendors>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vendors.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vendors> mapFromJson(dynamic json) {
    final map = <String, Vendors>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vendors.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vendors-objects as value to a dart map
  static Map<String, List<Vendors>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Vendors>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vendors.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vendors',
  };
}
