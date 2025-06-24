import 'package:string_calculator_tdd/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Test StringCalculator', () {
    final calculator = StringCalculator();

    test('should return 0 when input string is empty', () {
      expect(calculator.add(''), 0);
    });

    test(
      'should return the number itself when input string is a single number',
      () {
        expect(calculator.add('5'), 5);
      },
    );

    test('should return sum of numbers when input string comma-separated', () {
      expect(calculator.add('1,2'), equals(3));
      expect(calculator.add('1,2,3'), equals(6));
      expect(calculator.add('1,2,3,4,5'), equals(15));
    });
  });
}
