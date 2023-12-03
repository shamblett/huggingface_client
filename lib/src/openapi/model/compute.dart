//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class Compute {
  /// Returns a new [Compute] instance.
  Compute({
    required this.accelerator,
    required this.architecture,
    this.gpuMemoryGb,
    required this.instanceSize,
    required this.instanceType,
    required this.memoryGb,
    required this.numAccelerators,
    this.numCpus,
    required this.pricePerHour,
    required this.status,
  });

  Accelerator accelerator;

  /// Compute accelerator architecture
  String architecture;

  /// Amount of memory per GPU in GB
  ///
  /// Minimum value: 0
  int? gpuMemoryGb;

  /// Compute accelerator instance size
  String instanceSize;

  /// Compute accelerator instance type
  String instanceType;

  /// Amount of RAM which can be requested per endpoint replica
  ///
  /// Minimum value: 0
  int memoryGb;

  /// Number of accelerator units which can be requested per endpoint replica
  ///
  /// Minimum value: 0
  int numAccelerators;

  /// Number of CPUs which can be requested per endpoint replica
  ///
  /// Minimum value: 0
  int? numCpus;

  /// Price per hour in dollar of an endpoint replica
  double pricePerHour;

  Status status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Compute &&
          other.accelerator == accelerator &&
          other.architecture == architecture &&
          other.gpuMemoryGb == gpuMemoryGb &&
          other.instanceSize == instanceSize &&
          other.instanceType == instanceType &&
          other.memoryGb == memoryGb &&
          other.numAccelerators == numAccelerators &&
          other.numCpus == numCpus &&
          other.pricePerHour == pricePerHour &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (accelerator.hashCode) +
      (architecture.hashCode) +
      (gpuMemoryGb == null ? 0 : gpuMemoryGb!.hashCode) +
      (instanceSize.hashCode) +
      (instanceType.hashCode) +
      (memoryGb.hashCode) +
      (numAccelerators.hashCode) +
      (numCpus == null ? 0 : numCpus!.hashCode) +
      (pricePerHour.hashCode) +
      (status.hashCode);

  @override
  String toString() =>
      'Compute[accelerator=$accelerator, architecture=$architecture, gpuMemoryGb=$gpuMemoryGb, instanceSize=$instanceSize, instanceType=$instanceType, memoryGb=$memoryGb, numAccelerators=$numAccelerators, numCpus=$numCpus, pricePerHour=$pricePerHour, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'accelerator'] = accelerator;
    json[r'architecture'] = architecture;
    if (gpuMemoryGb != null) {
      json[r'gpuMemoryGb'] = gpuMemoryGb;
    } else {
      json[r'gpuMemoryGb'] = null;
    }
    json[r'instanceSize'] = instanceSize;
    json[r'instanceType'] = instanceType;
    json[r'memoryGb'] = memoryGb;
    json[r'numAccelerators'] = numAccelerators;
    if (numCpus != null) {
      json[r'numCpus'] = numCpus;
    } else {
      json[r'numCpus'] = null;
    }
    json[r'pricePerHour'] = pricePerHour;
    json[r'status'] = status;
    return json;
  }

  /// Returns a new [Compute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Compute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "Compute[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Compute[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return Compute(
        accelerator: Accelerator.fromJson(json[r'accelerator'])!,
        architecture: mapValueOfType<String>(json, r'architecture')!,
        gpuMemoryGb: mapValueOfType<int>(json, r'gpuMemoryGb'),
        instanceSize: mapValueOfType<String>(json, r'instanceSize')!,
        instanceType: mapValueOfType<String>(json, r'instanceType')!,
        memoryGb: mapValueOfType<int>(json, r'memoryGb')!,
        numAccelerators: mapValueOfType<int>(json, r'numAccelerators')!,
        numCpus: mapValueOfType<int>(json, r'numCpus'),
        pricePerHour: mapValueOfType<double>(json, r'pricePerHour')!,
        status: Status.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Compute> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Compute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Compute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Compute> mapFromJson(dynamic json) {
    final map = <String, Compute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Compute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Compute-objects as value to a dart map
  static Map<String, List<Compute>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Compute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Compute.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accelerator',
    'architecture',
    'instanceSize',
    'instanceType',
    'memoryGb',
    'numAccelerators',
    'pricePerHour',
    'status',
  };
}
