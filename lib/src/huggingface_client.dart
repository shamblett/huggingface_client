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
  /// Get an Inference Endpoint API client with API Key authentication.
  /// [endpointScope] is either your user name or one of your organization name.
  /// [basePath] the API base path i.e. [endpointBasePath]
  static EndpointApiClient getEndpointClient(
          String apiKey, String endpointScope, String basePath) =>
      EndpointApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey
            ..apiKeyPrefix = 'Bearer',
          endpointScope: endpointScope,
          basePath: basePath);

  /// Get an Inference Endpoint Provider API client with API Key authentication.
  /// [endpointScope] is either your user name or one of your organization name.
  /// [basePath] the API base path i.e. [endpointBasePath]
  static EndpointProviderApiClient getEndpointProviderClient(
          String apiKey, String endpointScope, String basePath) =>
      EndpointProviderApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey
            ..apiKeyPrefix = 'Bearer',
          endpointScope: endpointScope,
          basePath: basePath);

  /// Get an Inference API client with API Key authentication.
  /// [basePath] the API base path i.e. [inferenceBasePath]
  static InferenceApiClient getInferenceClient(
          String apiKey, String basePath) =>
      InferenceApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey
            ..apiKeyPrefix = 'Bearer',
          basePath: basePath);

  static String inferenceBasePath =
      'https://api-inference.huggingface.co/models';
  static String endpointBasePath = 'https://api.endpoints.huggingface.cloud';
}
