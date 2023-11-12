//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class Endpoint {
  /// Returns a new [Endpoint] instance.
  Endpoint({
    this.accountId,
    required this.compute,
    required this.model,
    required this.name,
    required this.provider,
    required this.type,
  });

  /// Account ID used to link a VPC to a private endpoint
  String? accountId;

  EndpointCompute compute;

  EndpointModel model;

  /// Endpoint name. Must only contains lowercase alphanumeric characters or '-' and have a length of 32 characters maximum
  String name;

  EndpointProvider provider;

  EndpointType type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Endpoint &&
          other.accountId == accountId &&
          other.compute == compute &&
          other.model == model &&
          other.name == name &&
          other.provider == provider &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (accountId == null ? 0 : accountId!.hashCode) +
      (compute.hashCode) +
      (model.hashCode) +
      (name.hashCode) +
      (provider.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'Endpoint[accountId=$accountId, compute=$compute, model=$model, name=$name, provider=$provider, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    } else {
      json[r'accountId'] = null;
    }
    json[r'compute'] = compute.toJson();
    json[r'model'] = model.toJson();
    json[r'name'] = name;
    json[r'provider'] = provider.toJson();
    json[r'type'] = type.toJson();
    return json;
  }

  /// Returns a new [Endpoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Endpoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "Endpoint[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Endpoint[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return Endpoint(
        accountId: mapValueOfType<String>(json, r'accountId'),
        compute: EndpointCompute.fromJson(json[r'compute'])!,
        model: EndpointModel.fromJson(json[r'model'])!,
        name: mapValueOfType<String>(json, r'name')!,
        provider: EndpointProvider.fromJson(json[r'provider'])!,
        type: EndpointType.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<Endpoint> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Endpoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Endpoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Endpoint> mapFromJson(dynamic json) {
    final map = <String, Endpoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Endpoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Endpoint-objects as value to a dart map
  static Map<String, List<Endpoint>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Endpoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Endpoint.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'compute',
    'model',
    'name',
    'provider',
    'type',
  };
}
