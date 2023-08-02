//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Vendor {
  /// Returns a new [Vendor] instance.
  Vendor({
    required this.name,
    this.regions = const [],
    required this.status,
  });

  String name;

  /// Vendor regions list
  List<Region> regions;

  Status status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Vendor &&
     other.name == name &&
     other.regions == regions &&
     other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (regions.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'Vendor[name=$name, regions=$regions, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'regions'] = this.regions;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Vendor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vendor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Vendor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Vendor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Vendor(
        name: mapValueOfType<String>(json, r'name')!,
        regions: Region.listFromJson(json[r'regions']),
        status: Status.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Vendor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Vendor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vendor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vendor> mapFromJson(dynamic json) {
    final map = <String, Vendor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vendor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vendor-objects as value to a dart map
  static Map<String, List<Vendor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Vendor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vendor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'regions',
    'status',
  };
}

