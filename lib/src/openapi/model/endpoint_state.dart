//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// State of the endpoint
class EndpointState {
  /// Instantiate a new enum with the provided [value].
  const EndpointState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = EndpointState._(r'pending');
  static const initializing = EndpointState._(r'initializing');
  static const updating = EndpointState._(r'updating');
  static const updateFailed = EndpointState._(r'updateFailed');
  static const running = EndpointState._(r'running');
  static const paused = EndpointState._(r'paused');
  static const failed = EndpointState._(r'failed');
  static const scaledToZero = EndpointState._(r'scaledToZero');

  /// List of all possible values in this [enum][EndpointState].
  static const values = <EndpointState>[
    pending,
    initializing,
    updating,
    updateFailed,
    running,
    paused,
    failed,
    scaledToZero,
  ];

  static EndpointState? fromJson(dynamic value) =>
      EndpointStateTypeTransformer().decode(value);

  static List<EndpointState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointState] to String,
/// and [decode] dynamic data back to [EndpointState].
class EndpointStateTypeTransformer {
  factory EndpointStateTypeTransformer() =>
      _instance ??= const EndpointStateTypeTransformer._();

  const EndpointStateTypeTransformer._();

  String encode(EndpointState data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending':
          return EndpointState.pending;
        case r'initializing':
          return EndpointState.initializing;
        case r'updating':
          return EndpointState.updating;
        case r'updateFailed':
          return EndpointState.updateFailed;
        case r'running':
          return EndpointState.running;
        case r'paused':
          return EndpointState.paused;
        case r'failed':
          return EndpointState.failed;
        case r'scaledToZero':
          return EndpointState.scaledToZero;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointStateTypeTransformer] instance.
  static EndpointStateTypeTransformer? _instance;
}
