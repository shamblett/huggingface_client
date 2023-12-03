//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class EndpointAccount {
  /// Returns a new [EndpointAccount] instance.
  EndpointAccount({
    required this.id,
    required this.name,
  });

  /// Account id
  String id;

  /// Account name
  String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointAccount && other.id == id && other.name == name;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (name.hashCode);

  @override
  String toString() => 'EndpointAccount[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = id;
    json[r'name'] = name;
    return json;
  }

  /// Returns a new [EndpointAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointAccount[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointAccount[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointAccount(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<EndpointAccount> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointAccount> mapFromJson(dynamic json) {
    final map = <String, EndpointAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointAccount-objects as value to a dart map
  static Map<String, List<EndpointAccount>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointAccount.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}
