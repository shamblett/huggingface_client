//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class VendorList {
  /// Returns a new [VendorList] instance.
  VendorList({
    this.items = const [],
  });

  /// Vendors list
  List<Vendor> items;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is VendorList && other.items == items;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (items.hashCode);

  @override
  String toString() => 'VendorList[items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'items'] = items;
    return json;
  }

  /// Returns a new [VendorList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VendorList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "VendorList[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "VendorList[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return VendorList(
        items: Vendor.listFromJson(json[r'vendors']),
      );
    }
    return null;
  }

  static List<VendorList> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VendorList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VendorList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VendorList> mapFromJson(dynamic json) {
    final map = <String, VendorList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VendorList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VendorList-objects as value to a dart map
  static Map<String, List<VendorList>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VendorList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VendorList.listFromJson(
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
