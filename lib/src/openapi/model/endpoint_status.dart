//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointStatus {
  /// Returns a new [EndpointStatus] instance.
  EndpointStatus({
    required this.createdAt,
    required this.createdBy,
    required this.message,
    this.private,
    required this.readyReplica,
    required this.state,
    required this.targetReplica,
    required this.updatedAt,
    required this.updatedBy,
    this.url,
  });

  /// Date of creation
  DateTime createdAt;

  EndpointAccount createdBy;

  /// Information about the state of the endpoint
  String message;

  EndpointStatusPrivate? private;

  /// Number of replica ready to handle requests
  ///
  /// Minimum value: 0
  int readyReplica;

  EndpointState state;

  /// Target number of replica to handle requests
  ///
  /// Minimum value: 0
  int targetReplica;

  /// Date of last update
  DateTime updatedAt;

  EndpointAccount updatedBy;

  /// URL the endpoint is reachable at
  String? url;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointStatus &&
          other.createdAt == createdAt &&
          other.createdBy == createdBy &&
          other.message == message &&
          other.private == private &&
          other.readyReplica == readyReplica &&
          other.state == state &&
          other.targetReplica == targetReplica &&
          other.updatedAt == updatedAt &&
          other.updatedBy == updatedBy &&
          other.url == url;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (createdAt.hashCode) +
      (createdBy.hashCode) +
      (message.hashCode) +
      (private == null ? 0 : private!.hashCode) +
      (readyReplica.hashCode) +
      (state.hashCode) +
      (targetReplica.hashCode) +
      (updatedAt.hashCode) +
      (updatedBy.hashCode) +
      (url == null ? 0 : url!.hashCode);

  @override
  String toString() =>
      'EndpointStatus[createdAt=$createdAt, createdBy=$createdBy, message=$message, private=$private, readyReplica=$readyReplica, state=$state, targetReplica=$targetReplica, updatedAt=$updatedAt, updatedBy=$updatedBy, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    json[r'createdBy'] = this.createdBy;
    json[r'message'] = this.message;
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    json[r'readyReplica'] = this.readyReplica;
    json[r'state'] = this.state;
    json[r'targetReplica'] = this.targetReplica;
    json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    json[r'updatedBy'] = this.updatedBy;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointStatus(
        createdAt: mapDateTime(json, r'createdAt', '')!,
        createdBy: EndpointAccount.fromJson(json[r'createdBy'])!,
        message: mapValueOfType<String>(json, r'message')!,
        private: EndpointStatusPrivate.fromJson(json[r'private']),
        readyReplica: mapValueOfType<int>(json, r'readyReplica')!,
        state: EndpointState.fromJson(json[r'state'])!,
        targetReplica: mapValueOfType<int>(json, r'targetReplica')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        updatedBy: EndpointAccount.fromJson(json[r'updatedBy'])!,
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<EndpointStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointStatus> mapFromJson(dynamic json) {
    final map = <String, EndpointStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointStatus-objects as value to a dart map
  static Map<String, List<EndpointStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointStatus.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'createdBy',
    'message',
    'readyReplica',
    'state',
    'targetReplica',
    'updatedAt',
    'updatedBy',
  };
}
