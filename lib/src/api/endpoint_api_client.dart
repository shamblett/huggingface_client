/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of api.api;

///
/// The Inference endpoint API client just extends the Open API client
///
class EndpointApiClient extends ApiClient {
  EndpointApiClient(
      {String basePath = 'http://localhost',
      Authentication? authentication,
      required String endpointScope})
      : super(
            basePath: basePath,
            authentication: authentication,
            endpointScope: endpointScope);
}
