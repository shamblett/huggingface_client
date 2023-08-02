//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointModelImageUpdateOneOfCustom {
  /// Returns a new [EndpointModelImageUpdateOneOfCustom] instance.
  EndpointModelImageUpdateOneOfCustom({
    this.credentials,
    this.env = const {},
    this.healthRoute,
    this.port = 80,
    this.url,
  });

  EndpointImageCredentials? credentials;

  /// Container environment variables
  Map<String, String> env;

  /// Container health route
  String? healthRoute;

  /// Endpoint API port
  ///
  /// Minimum value: 0
  int? port;

  /// URL fo the container
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EndpointModelImageUpdateOneOfCustom &&
     other.credentials == credentials &&
     other.env == env &&
     other.healthRoute == healthRoute &&
     other.port == port &&
     other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentials == null ? 0 : credentials!.hashCode) +
    (env.hashCode) +
    (healthRoute == null ? 0 : healthRoute!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'EndpointModelImageUpdateOneOfCustom[credentials=$credentials, env=$env, healthRoute=$healthRoute, port=$port, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentials != null) {
      json[r'credentials'] = this.credentials;
    } else {
      json[r'credentials'] = null;
    }
      json[r'env'] = this.env;
    if (this.healthRoute != null) {
      json[r'health_route'] = this.healthRoute;
    } else {
      json[r'health_route'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointModelImageUpdateOneOfCustom] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelImageUpdateOneOfCustom? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EndpointModelImageUpdateOneOfCustom[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EndpointModelImageUpdateOneOfCustom[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointModelImageUpdateOneOfCustom(
        credentials: EndpointImageCredentials.fromJson(json[r'credentials']),
        env: mapCastOfType<String, String>(json, r'env') ?? const {},
        healthRoute: mapValueOfType<String>(json, r'health_route'),
        port: mapValueOfType<int>(json, r'port') ?? 80,
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<EndpointModelImageUpdateOneOfCustom> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointModelImageUpdateOneOfCustom>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelImageUpdateOneOfCustom.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelImageUpdateOneOfCustom> mapFromJson(dynamic json) {
    final map = <String, EndpointModelImageUpdateOneOfCustom>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelImageUpdateOneOfCustom.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelImageUpdateOneOfCustom-objects as value to a dart map
  static Map<String, List<EndpointModelImageUpdateOneOfCustom>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EndpointModelImageUpdateOneOfCustom>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelImageUpdateOneOfCustom.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

