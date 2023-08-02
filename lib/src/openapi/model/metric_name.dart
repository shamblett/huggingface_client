//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MetricName {
  /// Instantiate a new enum with the provided [value].
  const MetricName._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const requestCount = MetricName._(r'request-count');
  static const medianLatency = MetricName._(r'median-latency');
  static const p95Latency = MetricName._(r'p95-latency');
  static const successThroughput = MetricName._(r'success-throughput');
  static const badRequestThroughput = MetricName._(r'bad-request-throughput');
  static const serverErrorThroughput = MetricName._(r'server-error-throughput');
  static const cpuUsage = MetricName._(r'cpu-usage');
  static const memoryUsage = MetricName._(r'memory-usage');
  static const gpuUsage = MetricName._(r'gpu-usage');
  static const gpuMemoryUsage = MetricName._(r'gpu-memory-usage');
  static const averageLatency = MetricName._(r'average-latency');
  static const successRate = MetricName._(r'success-rate');
  static const badRequestRate = MetricName._(r'bad-request-rate');
  static const serverErrorRate = MetricName._(r'server-error-rate');

  /// List of all possible values in this [enum][MetricName].
  static const values = <MetricName>[
    requestCount,
    medianLatency,
    p95Latency,
    successThroughput,
    badRequestThroughput,
    serverErrorThroughput,
    cpuUsage,
    memoryUsage,
    gpuUsage,
    gpuMemoryUsage,
    averageLatency,
    successRate,
    badRequestRate,
    serverErrorRate,
  ];

  static MetricName? fromJson(dynamic value) =>
      MetricNameTypeTransformer().decode(value);

  static List<MetricName> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MetricName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MetricName] to String,
/// and [decode] dynamic data back to [MetricName].
class MetricNameTypeTransformer {
  factory MetricNameTypeTransformer() =>
      _instance ??= const MetricNameTypeTransformer._();

  const MetricNameTypeTransformer._();

  String encode(MetricName data) => data.value;

  /// Decodes a [dynamic value][data] to a MetricName.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MetricName? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'request-count':
          return MetricName.requestCount;
        case r'median-latency':
          return MetricName.medianLatency;
        case r'p95-latency':
          return MetricName.p95Latency;
        case r'success-throughput':
          return MetricName.successThroughput;
        case r'bad-request-throughput':
          return MetricName.badRequestThroughput;
        case r'server-error-throughput':
          return MetricName.serverErrorThroughput;
        case r'cpu-usage':
          return MetricName.cpuUsage;
        case r'memory-usage':
          return MetricName.memoryUsage;
        case r'gpu-usage':
          return MetricName.gpuUsage;
        case r'gpu-memory-usage':
          return MetricName.gpuMemoryUsage;
        case r'average-latency':
          return MetricName.averageLatency;
        case r'success-rate':
          return MetricName.successRate;
        case r'bad-request-rate':
          return MetricName.badRequestRate;
        case r'server-error-rate':
          return MetricName.serverErrorRate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MetricNameTypeTransformer] instance.
  static MetricNameTypeTransformer? _instance;
}
