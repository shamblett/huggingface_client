//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EndpointTask {
  /// Instantiate a new enum with the provided [value].
  const EndpointTask._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textClassification = EndpointTask._(r'text-classification');
  static const zeroShotClassification =
      EndpointTask._(r'zero-shot-classification');
  static const tokenClassification = EndpointTask._(r'token-classification');
  static const questionAnswering = EndpointTask._(r'question-answering');
  static const fillMask = EndpointTask._(r'fill-mask');
  static const summarization = EndpointTask._(r'summarization');
  static const translation = EndpointTask._(r'translation');
  static const text2textGeneration = EndpointTask._(r'text2text-generation');
  static const textGeneration = EndpointTask._(r'text-generation');
  static const featureExtraction = EndpointTask._(r'feature-extraction');
  static const imageClassification = EndpointTask._(r'image-classification');
  static const automaticSpeechRecognition =
      EndpointTask._(r'automatic-speech-recognition');
  static const audioClassification = EndpointTask._(r'audio-classification');
  static const objectDetection = EndpointTask._(r'object-detection');
  static const imageSegmentation = EndpointTask._(r'image-segmentation');
  static const tableQuestionAnswering =
      EndpointTask._(r'table-question-answering');
  static const conversational = EndpointTask._(r'conversational');
  static const sentenceSimilarity = EndpointTask._(r'sentence-similarity');
  static const sentenceEmbeddings = EndpointTask._(r'sentence-embeddings');
  static const sentenceRanking = EndpointTask._(r'sentence-ranking');
  static const textToImage = EndpointTask._(r'text-to-image');
  static const custom = EndpointTask._(r'custom');

  /// List of all possible values in this [enum][EndpointTask].
  static const values = <EndpointTask>[
    textClassification,
    zeroShotClassification,
    tokenClassification,
    questionAnswering,
    fillMask,
    summarization,
    translation,
    text2textGeneration,
    textGeneration,
    featureExtraction,
    imageClassification,
    automaticSpeechRecognition,
    audioClassification,
    objectDetection,
    imageSegmentation,
    tableQuestionAnswering,
    conversational,
    sentenceSimilarity,
    sentenceEmbeddings,
    sentenceRanking,
    textToImage,
    custom,
  ];

  static EndpointTask? fromJson(dynamic value) =>
      EndpointTaskTypeTransformer().decode(value);

  static List<EndpointTask> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointTask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointTask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointTask] to String,
/// and [decode] dynamic data back to [EndpointTask].
class EndpointTaskTypeTransformer {
  factory EndpointTaskTypeTransformer() =>
      _instance ??= const EndpointTaskTypeTransformer._();

  const EndpointTaskTypeTransformer._();

  String encode(EndpointTask data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointTask.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointTask? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text-classification':
          return EndpointTask.textClassification;
        case r'zero-shot-classification':
          return EndpointTask.zeroShotClassification;
        case r'token-classification':
          return EndpointTask.tokenClassification;
        case r'question-answering':
          return EndpointTask.questionAnswering;
        case r'fill-mask':
          return EndpointTask.fillMask;
        case r'summarization':
          return EndpointTask.summarization;
        case r'translation':
          return EndpointTask.translation;
        case r'text2text-generation':
          return EndpointTask.text2textGeneration;
        case r'text-generation':
          return EndpointTask.textGeneration;
        case r'feature-extraction':
          return EndpointTask.featureExtraction;
        case r'image-classification':
          return EndpointTask.imageClassification;
        case r'automatic-speech-recognition':
          return EndpointTask.automaticSpeechRecognition;
        case r'audio-classification':
          return EndpointTask.audioClassification;
        case r'object-detection':
          return EndpointTask.objectDetection;
        case r'image-segmentation':
          return EndpointTask.imageSegmentation;
        case r'table-question-answering':
          return EndpointTask.tableQuestionAnswering;
        case r'conversational':
          return EndpointTask.conversational;
        case r'sentence-similarity':
          return EndpointTask.sentenceSimilarity;
        case r'sentence-embeddings':
          return EndpointTask.sentenceEmbeddings;
        case r'sentence-ranking':
          return EndpointTask.sentenceRanking;
        case r'text-to-image':
          return EndpointTask.textToImage;
        case r'custom':
          return EndpointTask.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointTaskTypeTransformer] instance.
  static EndpointTaskTypeTransformer? _instance;
}
