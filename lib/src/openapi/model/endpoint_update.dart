//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: type=lint
part of openapi.api;

class EndpointUpdate {
  /// Returns a new [EndpointUpdate] instance.
  EndpointUpdate({
    this.compute,
    this.model,
  });

  EndpointComputeUpdate? compute;

  EndpointModelUpdate? model;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointUpdate &&
          other.compute == compute &&
          other.model == model;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (compute == null ? 0 : compute!.hashCode) +
      (model == null ? 0 : model!.hashCode);

  @override
  String toString() => 'EndpointUpdate[compute=$compute, model=$model]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (compute != null) {
      json[r'compute'] = compute;
    } else {
      json[r'compute'] = null;
    }
    if (model != null) {
      json[r'model'] = model;
    } else {
      json[r'model'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointUpdate[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointUpdate[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointUpdate(
        compute: EndpointComputeUpdate.fromJson(json[r'compute']),
        model: EndpointModelUpdate.fromJson(json[r'model']),
      );
    }
    return null;
  }

  static List<EndpointUpdate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointUpdate> mapFromJson(dynamic json) {
    final map = <String, EndpointUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointUpdate-objects as value to a dart map
  static Map<String, List<EndpointUpdate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointUpdate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
