//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointWithStatus {
  /// Returns a new [EndpointWithStatus] instance.
  EndpointWithStatus({
    this.accountId,
    required this.compute,
    required this.model,
    required this.name,
    required this.provider,
    required this.status,
    required this.type,
  });

  /// Account ID used to link a VPC to a private endpoint
  String? accountId;

  EndpointCompute compute;

  EndpointModel model;

  /// Endpoint name. Must only contains lowercase alphanumeric characters or '-' and have a length of 32 characters maximum
  String name;

  EndpointProvider provider;

  EndpointStatus status;

  EndpointType type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointWithStatus &&
          other.accountId == accountId &&
          other.compute == compute &&
          other.model == model &&
          other.name == name &&
          other.provider == provider &&
          other.status == status &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (accountId == null ? 0 : accountId!.hashCode) +
      (compute.hashCode) +
      (model.hashCode) +
      (name.hashCode) +
      (provider.hashCode) +
      (status.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'EndpointWithStatus[accountId=$accountId, compute=$compute, model=$model, name=$name, provider=$provider, status=$status, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    json[r'compute'] = this.compute;
    json[r'model'] = this.model;
    json[r'name'] = this.name;
    json[r'provider'] = this.provider;
    json[r'status'] = this.status;
    json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [EndpointWithStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointWithStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointWithStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointWithStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointWithStatus(
        accountId: mapValueOfType<String>(json, r'accountId'),
        compute: EndpointCompute.fromJson(json[r'compute'])!,
        model: EndpointModel.fromJson(json[r'model'])!,
        name: mapValueOfType<String>(json, r'name')!,
        provider: EndpointProvider.fromJson(json[r'provider'])!,
        status: EndpointStatus.fromJson(json[r'status'])!,
        type: EndpointType.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<EndpointWithStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointWithStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointWithStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointWithStatus> mapFromJson(dynamic json) {
    final map = <String, EndpointWithStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointWithStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointWithStatus-objects as value to a dart map
  static Map<String, List<EndpointWithStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointWithStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointWithStatus.listFromJson(
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
    'status',
    'type',
  };
}
