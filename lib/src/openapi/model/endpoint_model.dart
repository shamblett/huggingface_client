//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointModel {
  /// Returns a new [EndpointModel] instance.
  EndpointModel({
    required this.framework,
    required this.image,
    required this.repository,
    this.revision,
    this.task,
  });

  EndpointFramework framework;

  EndpointModelImage image;

  /// HuggingFace repository
  String repository;

  /// Model commit hash, if not set the latest commit will be used
  String? revision;

  EndpointTask? task;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointModel &&
          other.framework == framework &&
          other.image == image &&
          other.repository == repository &&
          other.revision == revision &&
          other.task == task;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (framework.hashCode) +
      (image.hashCode) +
      (repository.hashCode) +
      (revision == null ? 0 : revision!.hashCode) +
      (task == null ? 0 : task!.hashCode);

  @override
  String toString() =>
      'EndpointModel[framework=$framework, image=$image, repository=$repository, revision=$revision, task=$task]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'framework'] = framework;
    json[r'image'] = image;
    json[r'repository'] = repository;
    if (revision != null) {
      json[r'revision'] = revision;
    } else {
      json[r'revision'] = null;
    }
    if (task != null) {
      json[r'task'] = task;
    } else {
      json[r'task'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "EndpointModel[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointModel[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return EndpointModel(
        framework: EndpointFramework.fromJson(json[r'framework'])!,
        image: EndpointModelImage.fromJson(json[r'image'])!,
        repository: mapValueOfType<String>(json, r'repository')!,
        revision: mapValueOfType<String>(json, r'revision'),
        task: EndpointTask.fromJson(json[r'task']),
      );
    }
    return null;
  }

  static List<EndpointModel> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointModel> mapFromJson(dynamic json) {
    final map = <String, EndpointModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointModel-objects as value to a dart map
  static Map<String, List<EndpointModel>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointModel.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'framework',
    'image',
    'repository',
  };
}
