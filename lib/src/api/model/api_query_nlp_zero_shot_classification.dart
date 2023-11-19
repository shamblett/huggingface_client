/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

/// This task is super useful to try out classification with zero code, you simply
/// pass a sentence/paragraph and the possible labels for that sentence,
/// and you get a result.
///
class ApiQueryNLPZeroShotClassification {
  /// Returns a new [ApiQueryNLPZeroShotClassification] instance.
  ApiQueryNLPZeroShotClassification(
      {required this.inputs,
      required this.candidateLabels,
      this.multiLabel = false,
      this.options});

  /// Strings to be classified.
  List<String> inputs;

  /// A list of strings that are potential classes for inputs. (max 10 candidate_labels,
  /// for more, simply run multiple requests, results are going to be misleading if using too
  /// many candidate_labels anyway. If you want to keep the exact same, you can simply run
  /// multi_label=True and do the scaling on your end. )
  List<String> candidateLabels;

  /// (Default: false) Boolean that is set to True if classes can overlap.
  bool multiLabel = false;

  /// Common inference options
  InferenceOptions? options = InferenceOptions();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiQueryNLPZeroShotClassification &&
          (other.inputs == inputs) &&
          other.candidateLabels == candidateLabels;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (inputs.hashCode);

  @override
  String toString() =>
      'ApiQueryNLPZeroShotClassification - [Inputs=$inputs, Candidate Labels=$candidateLabels, '
      'Multi Label=${multiLabel ? 'true' : 'false'}, Options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'inputs'] = inputs;
    json[r'candidate_labels'] = candidateLabels;
    if (multiLabel) {
      json[r'multi_label'] = true;
    }
    json[r'options'] = options?.toJson();
    return json;
  }

  /// Returns a new [ApiQueryNLPZeroShotClassification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiQueryNLPZeroShotClassification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(json.containsKey(key),
              'Required key "ApiResponseError[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ApiResponseError[$key]" has a null value in JSON.');
        }
        return true;
      }());

      return ApiQueryNLPZeroShotClassification(
          inputs: mapValueOfType<List<String>>(json, r'inputs')!,
          candidateLabels:
              mapValueOfType<List<String>>(json, r'candidate_labels')!,
          multiLabel:
              mapValueOfTypeWithDefault<bool>(json, r'multi_label', false)!,
          options: mapValueOfTypeWithDefault<InferenceOptions>(
              json, r'options', InferenceOptions())!);
    }
    return null;
  }

  static List<ApiQueryNLPZeroShotClassification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ApiQueryNLPZeroShotClassification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiQueryNLPZeroShotClassification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiQueryNLPZeroShotClassification> mapFromJson(
      dynamic json) {
    final map = <String, ApiQueryNLPZeroShotClassification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiQueryNLPZeroShotClassification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiQueryNLPTranslation-objects as value to a dart map
  static Map<String, List<ApiQueryNLPZeroShotClassification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ApiQueryNLPZeroShotClassification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiQueryNLPZeroShotClassification.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'inputs', 'candidate_labels'};
}
