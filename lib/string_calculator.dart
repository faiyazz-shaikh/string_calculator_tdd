class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    final delimiter = ',';

    final numbersToProcess = numbers.replaceAll('\n', delimiter);

    return numbersToProcess
        .split(delimiter)
        .map((number) => int.parse(number))
        .fold(0, (sum, number) => sum + number);
  }
}
