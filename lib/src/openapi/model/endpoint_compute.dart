//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointCompute {
  /// Returns a new [EndpointCompute] instance.
  EndpointCompute({
    required this.accelerator,
    required this.instanceSize,
    required this.instanceType,
    required this.scaling,
  });

  EndpointAccelerator accelerator;

  String instanceSize;

  /// Compute instance type
  String instanceType;

  EndpointScaling scaling;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EndpointCompute &&
     other.accelerator == accelerator &&
     other.instanceSize == instanceSize &&
     other.instanceType == instanceType &&
     other.scaling == scaling;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accelerator.hashCode) +
    (instanceSize.hashCode) +
    (instanceType.hashCode) +
    (scaling.hashCode);

  @override
  String toString() => 'EndpointCompute[accelerator=$accelerator, instanceSize=$instanceSize, instanceType=$instanceType, scaling=$scaling]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accelerator'] = this.accelerator;
      json[r'instanceSize'] = this.instanceSize;
      json[r'instanceType'] = this.instanceType;
      json[r'scaling'] = this.scaling;
    return json;
  }

  /// Returns a new [EndpointCompute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointCompute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EndpointCompute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EndpointCompute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointCompute(
        accelerator: EndpointAccelerator.fromJson(json[r'accelerator'])!,
        instanceSize: mapValueOfType<String>(json, r'instanceSize')!,
        instanceType: mapValueOfType<String>(json, r'instanceType')!,
        scaling: EndpointScaling.fromJson(json[r'scaling'])!,
      );
    }
    return null;
  }

  static List<EndpointCompute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointCompute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointCompute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointCompute> mapFromJson(dynamic json) {
    final map = <String, EndpointCompute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointCompute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointCompute-objects as value to a dart map
  static Map<String, List<EndpointCompute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EndpointCompute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointCompute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accelerator',
    'instanceSize',
    'instanceType',
    'scaling',
  };
}

