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
  @Unsafe(
      'The inference endpoint API is not included in this client version, this may work but is untested - do not use')
  static EndpointApiClient getEndpointClient(
          String apiKey, String endpointScope, String basePath) =>
      EndpointApiClient(
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
