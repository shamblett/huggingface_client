/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

///
/// Hugging Face client class.
/// Provides a thin wrapper around the Open API implementation
class HuggingFaceClient {
  /// Get an API client with API Key authentication
  static ApiClient getApiKeyAuthClient(
          String apiKey, String endpointScope, String basePath) =>
      ApiClient(
          authentication: ApiKeyAuth('header', 'Authorization')
            ..apiKey = apiKey,
          endpointScope: endpointScope,
          basePath: basePath);

  /// Client version
  static const version = '1.0.0';
}
