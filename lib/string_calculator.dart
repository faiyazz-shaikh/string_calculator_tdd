class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    return numbers
        .split(',')
        .map((number) => int.parse(number))
        .fold(0, (sum, number) => sum + number);
  }
}
