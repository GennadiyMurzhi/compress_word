import 'dart:io';

import 'package:compress_word/compress_word.dart';

void main(List<String> arguments) {
  int? k;
  while(k == null || k <= 1) {
    print('print k');
    k = int.tryParse(stdin.readLineSync() ?? '');
  }

  while(true) {
    print('print word');

    final String word = stdin.readLineSync() ?? '';

    print('target word: $word');
    print('result: ${compressWord(word, k)}\n');
  }
}
