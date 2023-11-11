/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 02/08/2023
 * Copyright :  S.Hamblett
 */
// ignore_for_file: type=lint
part of huggingface_client;

///
/// The inference endpoint API
///
class EndpointApi extends V2endpointApi {
  EndpointApi(EndpointApiClient? apiClient) : super(apiClient);
}
