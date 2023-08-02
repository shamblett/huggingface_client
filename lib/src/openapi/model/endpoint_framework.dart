//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointFramework {
  /// Instantiate a new enum with the provided [value].
  const EndpointFramework._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const custom = EndpointFramework._(r'custom');
  static const pytorch = EndpointFramework._(r'pytorch');
  static const tensorflow = EndpointFramework._(r'tensorflow');

  /// List of all possible values in this [enum][EndpointFramework].
  static const values = <EndpointFramework>[
    custom,
    pytorch,
    tensorflow,
  ];

  static EndpointFramework? fromJson(dynamic value) =>
      EndpointFrameworkTypeTransformer().decode(value);

  static List<EndpointFramework> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointFramework>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointFramework.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointFramework] to String,
/// and [decode] dynamic data back to [EndpointFramework].
class EndpointFrameworkTypeTransformer {
  factory EndpointFrameworkTypeTransformer() =>
      _instance ??= const EndpointFrameworkTypeTransformer._();

  const EndpointFrameworkTypeTransformer._();

  String encode(EndpointFramework data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointFramework.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointFramework? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'custom':
          return EndpointFramework.custom;
        case r'pytorch':
          return EndpointFramework.pytorch;
        case r'tensorflow':
          return EndpointFramework.tensorflow;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointFrameworkTypeTransformer] instance.
  static EndpointFrameworkTypeTransformer? _instance;
}
