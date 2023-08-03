/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */

part of huggingface_client;

///
/// The Inference endpoint API client just extends the Open API client
///
class EndpointApiClient extends ApiClient {
  EndpointApiClient(
      {basePath = 'http://localhost', authentication, endpointScope})
      : super(
            basePath: basePath,
            endpointScope: endpointScope,
            authentication: authentication);
}
