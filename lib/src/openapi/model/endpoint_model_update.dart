//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointModelUpdate {
  /// Returns a new [EndpointModelUpdate] instance.
  EndpointModelUpdate({
    this.framework,
    this.image,
    this.repository,
    this.revision,
    this.task,
  });

  EndpointFramework? framework;

  EndpointModelImageUpdate? image;

  /// HuggingFace repository
  String? repository;

  /// Model commit hash, if not set the latest commit will be used
  String? revision;

  EndpointTask? task;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EndpointModelUpdate &&
     other.framework == framework &&
     other.image == image &&
     other.repository == repository &&
     other.revision == revision &&
     other.task == task;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (framework == null ? 0 : framework!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (repository == null ? 0 : repository!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (task == null ? 0 : task!.hashCode);

  @override
  String toString() => 'EndpointModelUpdate[framework=$framework, image=$image, repository=$repository, revision=$revision, task=$task]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.repository != null) {
      json[r'repository'] = this.repository;
    } else {
      json[r'repository'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.task != null) {
      json[r'task'] = this.task;
    } else {
      json[r'task'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointModelUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModelUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EndpointModelUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EndpointModelUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointModelUpdate(
        framework: EndpointFramework.fromJson(json[r'framework']),
        image: EndpointModelImageUpdate.fromJson(json[r'image']),
        repository: mapValueOfType<String>(json, r'repository'),
        revision: mapValueOfType<String>(json, r'revision'),
        task: EndpointTask.fromJson(json[r'task']),
      );
    }
    return null;
  }

  static List<EndpointModelUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointModelUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModelUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModelUpdate> mapFromJson(dynamic json) {
    final map = <String, EndpointModelUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModelUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModelUpdate-objects as value to a dart map
  static Map<String, List<EndpointModelUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EndpointModelUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModelUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

