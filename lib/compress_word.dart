String compressWord(String word, int k) {
  if (k <= 0 || word.length < k) {
    return word;
  }

  String compressedWord = word;
  int equal = 0;
  bool needRestart = false;
  do {
    for (int i = 0; i < compressedWord.length; i++) {
      if(i == 0 && needRestart) {
        needRestart = false;
      }
      if (i != compressedWord.length - 1 &&
          compressedWord[i] == compressedWord[i + 1]) {
        if (equal == 0) {
          equal += 2;
        } else {
          equal++;
        }
      } else {
        equal = 0;
      }
      if (equal == k) {
        compressedWord = compressedWord.replaceRange(i, i + k - 1, '');
        equal = 0;
        if(!needRestart && compressedWord.length > 1) {
          needRestart = true;
        }
        break;
      }
    }
  } while (needRestart);

  return compressedWord;
}
