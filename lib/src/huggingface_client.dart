/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

class Unsafe {
  final String name;
  const Unsafe(this.name);
}

///
/// Hugging Face client class.
/// Provides a thin wrapper around the Open API implementation.
///
class HuggingFaceClient {
  /// Get an Inference Endpoint API client with API Key authentication
  /// [endpointScope] is either your user name or one of your organization name
  /// [basePath] should be set to your created endpoint e.g from the Hugging Face
  /// docs 'https://uu149rez6gw9ehej.eu-west-1.aws.endpoints.huggingface.cloud/distilbert-sentiment'
  static ApiClient getEndpointClient(
          String apiKey, String endpointScope, String basePath) =>
      ApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey,
          endpointScope: endpointScope,
          basePath: basePath);

  /// Get an Inference API client with API Key authentication
  static InferenceApiClient getInferenceClient(
          String apiKey, String basePath) =>
      InferenceApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey
            ..apiKeyPrefix = 'Bearer',
          basePath: basePath);

  static String inferenceBasePath =
      'https://api-inference.huggingface.co/models';
}
