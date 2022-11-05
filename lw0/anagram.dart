bool anagram(String anagramStringOne, String anagramStringTwo) {
  Pattern from = RegExp(r'[./;:!?"{}+-]');
  String patternTo = "";
  anagramStringOne = anagramStringOne.toLowerCase();
  anagramStringOne = anagramStringOne.replaceAll(from, patternTo);
  anagramStringTwo = anagramStringTwo.toLowerCase();
  anagramStringTwo = anagramStringTwo.replaceAll(from, patternTo);
  int i = anagramStringTwo.length - 1;
  int j = 0;
  while (j < anagramStringOne.length && i >= 0) {
    if (anagramStringOne[j] != anagramStringTwo[i] ||
        anagramStringOne.length != anagramStringTwo.length) {
      return false;
    }
    j++;
    i--;
  }
  return true;
}

void main() {
  print(anagram('ho":;use', '..es;uoh'));
}
