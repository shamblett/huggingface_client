//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Endpoint accelerator
class EndpointAccelerator {
  /// Instantiate a new enum with the provided [value].
  const EndpointAccelerator._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cpu = EndpointAccelerator._(r'cpu');
  static const gpu = EndpointAccelerator._(r'gpu');

  /// List of all possible values in this [enum][EndpointAccelerator].
  static const values = <EndpointAccelerator>[
    cpu,
    gpu,
  ];

  static EndpointAccelerator? fromJson(dynamic value) => EndpointAcceleratorTypeTransformer().decode(value);

  static List<EndpointAccelerator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointAccelerator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointAccelerator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointAccelerator] to String,
/// and [decode] dynamic data back to [EndpointAccelerator].
class EndpointAcceleratorTypeTransformer {
  factory EndpointAcceleratorTypeTransformer() => _instance ??= const EndpointAcceleratorTypeTransformer._();

  const EndpointAcceleratorTypeTransformer._();

  String encode(EndpointAccelerator data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointAccelerator.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointAccelerator? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cpu': return EndpointAccelerator.cpu;
        case r'gpu': return EndpointAccelerator.gpu;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointAcceleratorTypeTransformer] instance.
  static EndpointAcceleratorTypeTransformer? _instance;
}

