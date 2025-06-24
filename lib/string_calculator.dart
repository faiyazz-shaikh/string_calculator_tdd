class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    var delimiter = ',';
    var numbersToProcess = numbers;

    // Check for custom delimiter -> //[delimiter]\n[numbers…]
    if (numbers.startsWith('//')) {
      // Extract the custom delimiter
      int delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);

      // Remove the custom delimiter line from the numbers string
      numbersToProcess = numbers.substring(delimiterEndIndex + 1);
    }

    // Replace new lines with the delimiter
    numbersToProcess = numbersToProcess.replaceAll('\n', delimiter);

    return numbersToProcess
        .split(delimiter)
        .map((number) => int.parse(number))
        .fold(0, (sum, number) => sum + number);
  }
}
