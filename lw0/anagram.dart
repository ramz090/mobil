bool anagram(String anagramStringOne, String anagramStringTwo) {
  Pattern from = RegExp(r'[./;:!?"{}+-]');
  String patternTo = "";
  anagramStringOne = anagramStringOne.toLowerCase();
  anagramStringOne = anagramStringOne.replaceAll(from, patternTo);
  anagramStringTwo = anagramStringTwo.toLowerCase();
  anagramStringTwo = anagramStringTwo.replaceAll(from, patternTo);
  if (anagramStringOne.length != anagramStringTwo.length)
  {
    return false;
  }
  int j = 0;
  for (int i = anagramStringTwo.length;  i <=0;  i--)
  {
    if (anagramStringOne[j] != anagramStringTwo[i] ||
        anagramStringOne.length != anagramStringTwo.length) {
      return false;
    }
    j++;
  }
  return true;
}

void main() {
  print(anagram('ho":;use', '..es;uoh'));
}
