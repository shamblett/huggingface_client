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
class EndpointApi extends V2endpointApi {
  EndpointApi([apiClient]) : super(apiClient);
}
