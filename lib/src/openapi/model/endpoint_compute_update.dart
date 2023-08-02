//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointComputeUpdate {
  /// Returns a new [EndpointComputeUpdate] instance.
  EndpointComputeUpdate({
    this.accelerator,
    this.instanceSize,
    this.instanceType,
    this.scaling,
  });

  EndpointAccelerator? accelerator;

  String? instanceSize;

  /// Compute instance type
  String? instanceType;

  EndpointScalingUpdate? scaling;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EndpointComputeUpdate &&
     other.accelerator == accelerator &&
     other.instanceSize == instanceSize &&
     other.instanceType == instanceType &&
     other.scaling == scaling;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accelerator == null ? 0 : accelerator!.hashCode) +
    (instanceSize == null ? 0 : instanceSize!.hashCode) +
    (instanceType == null ? 0 : instanceType!.hashCode) +
    (scaling == null ? 0 : scaling!.hashCode);

  @override
  String toString() => 'EndpointComputeUpdate[accelerator=$accelerator, instanceSize=$instanceSize, instanceType=$instanceType, scaling=$scaling]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accelerator != null) {
      json[r'accelerator'] = this.accelerator;
    } else {
      json[r'accelerator'] = null;
    }
    if (this.instanceSize != null) {
      json[r'instanceSize'] = this.instanceSize;
    } else {
      json[r'instanceSize'] = null;
    }
    if (this.instanceType != null) {
      json[r'instanceType'] = this.instanceType;
    } else {
      json[r'instanceType'] = null;
    }
    if (this.scaling != null) {
      json[r'scaling'] = this.scaling;
    } else {
      json[r'scaling'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointComputeUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointComputeUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EndpointComputeUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EndpointComputeUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointComputeUpdate(
        accelerator: EndpointAccelerator.fromJson(json[r'accelerator']),
        instanceSize: mapValueOfType<String>(json, r'instanceSize'),
        instanceType: mapValueOfType<String>(json, r'instanceType'),
        scaling: EndpointScalingUpdate.fromJson(json[r'scaling']),
      );
    }
    return null;
  }

  static List<EndpointComputeUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointComputeUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointComputeUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointComputeUpdate> mapFromJson(dynamic json) {
    final map = <String, EndpointComputeUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointComputeUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointComputeUpdate-objects as value to a dart map
  static Map<String, List<EndpointComputeUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EndpointComputeUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointComputeUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

