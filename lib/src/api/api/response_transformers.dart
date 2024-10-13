/*
 * Package : huggingface_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 13/10/2024
 * Copyright :  Huzaif ansari
 */

import 'dart:async';
import 'dart:convert';

class StreamResponseTransformer
    extends StreamTransformerBase<List<int>, Map<String, dynamic>> {
  const StreamResponseTransformer();

  @override
  Stream<Map<String, dynamic>> bind(final Stream<List<int>> stream) {
    return stream //
        .transform(utf8.decoder) //
        .transform(const LineSplitter()) //
        .where((final i) => i.startsWith('data: ') && !i.endsWith('[DONE]'))
        .map((final item) => item.substring(6))
        .map((js) => json.decode(js));
  }
}
