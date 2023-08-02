//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MetricsParams {
  /// Returns a new [MetricsParams] instance.
  MetricsParams({
    required this.dnsPrefix,
    required this.from,
    this.step,
    required this.to,
  });

  String dnsPrefix;

  /// Minimum value: 0
  int from;

  String? step;

  /// Minimum value: 0
  int to;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetricsParams &&
          other.dnsPrefix == dnsPrefix &&
          other.from == from &&
          other.step == step &&
          other.to == to;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (dnsPrefix.hashCode) +
      (from.hashCode) +
      (step == null ? 0 : step!.hashCode) +
      (to.hashCode);

  @override
  String toString() =>
      'MetricsParams[dnsPrefix=$dnsPrefix, from=$from, step=$step, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'dnsPrefix'] = dnsPrefix;
    json[r'from'] = from;
    if (step != null) {
      json[r'step'] = step;
    } else {
      json[r'step'] = null;
    }
    json[r'to'] = to;
    return json;
  }

  /// Returns a new [MetricsParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetricsParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "MetricsParams[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MetricsParams[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return MetricsParams(
        dnsPrefix: mapValueOfType<String>(json, r'dnsPrefix')!,
        from: mapValueOfType<int>(json, r'from')!,
        step: mapValueOfType<String>(json, r'step'),
        to: mapValueOfType<int>(json, r'to')!,
      );
    }
    return null;
  }

  static List<MetricsParams> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MetricsParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricsParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetricsParams> mapFromJson(dynamic json) {
    final map = <String, MetricsParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetricsParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetricsParams-objects as value to a dart map
  static Map<String, List<MetricsParams>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MetricsParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetricsParams.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dnsPrefix',
    'from',
    'to',
  };
}
