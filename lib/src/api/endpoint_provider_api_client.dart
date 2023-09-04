/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

///
/// The Inference endpoint provider API client just extends the Open API client
///
class EndpointProviderApiClient extends ApiClient {
  EndpointProviderApiClient(
      {String basePath = 'http://localhost',
      Authentication? authentication,
      required String endpointScope})
      : super(
            basePath: basePath,
            authentication: authentication,
            endpointScope: endpointScope);
}
