//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Endpoint type. Public mean , private mean accessible only via a VPC
class EndpointType {
  /// Instantiate a new enum with the provided [value].
  const EndpointType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const public = EndpointType._(r'public');
  static const protected = EndpointType._(r'protected');
  static const private = EndpointType._(r'private');

  /// List of all possible values in this [enum][EndpointType].
  static const values = <EndpointType>[
    public,
    protected,
    private,
  ];

  static EndpointType? fromJson(dynamic value) => EndpointTypeTypeTransformer().decode(value);

  static List<EndpointType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointType] to String,
/// and [decode] dynamic data back to [EndpointType].
class EndpointTypeTypeTransformer {
  factory EndpointTypeTypeTransformer() => _instance ??= const EndpointTypeTypeTransformer._();

  const EndpointTypeTypeTransformer._();

  String encode(EndpointType data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'public': return EndpointType.public;
        case r'protected': return EndpointType.protected;
        case r'private': return EndpointType.private;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointTypeTypeTransformer] instance.
  static EndpointTypeTypeTransformer? _instance;
}

