//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Resource status
class Status {
  /// Instantiate a new enum with the provided [value].
  const Status._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const available = Status._(r'available');
  static const notAvailable = Status._(r'notAvailable');

  /// List of all possible values in this [enum][Status].
  static const values = <Status>[
    available,
    notAvailable,
  ];

  static Status? fromJson(dynamic value) =>
      StatusTypeTransformer().decode(value);

  static List<Status> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Status>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Status.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Status] to String,
/// and [decode] dynamic data back to [Status].
class StatusTypeTransformer {
  factory StatusTypeTransformer() =>
      _instance ??= const StatusTypeTransformer._();

  const StatusTypeTransformer._();

  String encode(Status data) => data.value;

  /// Decodes a [dynamic value][data] to a Status.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Status? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'available':
          return Status.available;
        case r'notAvailable':
          return Status.notAvailable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StatusTypeTransformer] instance.
  static StatusTypeTransformer? _instance;
}
