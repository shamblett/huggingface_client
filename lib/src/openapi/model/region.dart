//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class Region {
  /// Returns a new [Region] instance.
  Region({
    this.computes = const [],
    required this.label,
    required this.name,
    required this.status,
  });

  /// Vendor region compute resources list
  List<Compute> computes;

  String label;

  /// Region name
  String name;

  Status status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Region &&
          other.computes == computes &&
          other.label == label &&
          other.name == name &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (computes.hashCode) +
      (label.hashCode) +
      (name.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'Region[computes=$computes, label=$label, name=$name, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'computes'] = computes;
    json[r'label'] = label;
    json[r'name'] = name;
    json[r'status'] = status;
    return json;
  }

  /// Returns a new [Region] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Region? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "Region[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Region[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return Region(
        computes: Compute.listFromJson(json[r'computes']),
        label: mapValueOfType<String>(json, r'label')!,
        name: mapValueOfType<String>(json, r'name')!,
        status: Status.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Region> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Region>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Region.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Region> mapFromJson(dynamic json) {
    final map = <String, Region>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Region.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Region-objects as value to a dart map
  static Map<String, List<Region>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Region>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Region.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'computes',
    'label',
    'name',
    'status',
  };
}
