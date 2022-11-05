void fizzbuzz(int numberFizzbuzz) {
  for (int i = 1; i <= numberFizzbuzz; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizzbuzz");
      continue;
    }
    if (i % 3 == 0) {
      print("fizz");
      continue;
    }
    if (i % 5 == 0) {
      print("buz");
      continue;
    }
    print (i);
  }
}

void main() {
  fizzbuzz(30);
}
