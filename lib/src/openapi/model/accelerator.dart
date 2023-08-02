//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Compute accelerator
class Accelerator {
  /// Instantiate a new enum with the provided [value].
  const Accelerator._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cpu = Accelerator._(r'cpu');
  static const gpu = Accelerator._(r'gpu');

  /// List of all possible values in this [enum][Accelerator].
  static const values = <Accelerator>[
    cpu,
    gpu,
  ];

  static Accelerator? fromJson(dynamic value) => AcceleratorTypeTransformer().decode(value);

  static List<Accelerator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Accelerator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Accelerator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Accelerator] to String,
/// and [decode] dynamic data back to [Accelerator].
class AcceleratorTypeTransformer {
  factory AcceleratorTypeTransformer() => _instance ??= const AcceleratorTypeTransformer._();

  const AcceleratorTypeTransformer._();

  String encode(Accelerator data) => data.value;

  /// Decodes a [dynamic value][data] to a Accelerator.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Accelerator? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cpu': return Accelerator.cpu;
        case r'gpu': return Accelerator.gpu;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AcceleratorTypeTransformer] instance.
  static AcceleratorTypeTransformer? _instance;
}

