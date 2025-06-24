import 'package:string_calculator_tdd/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Test StringCalculator', () {
    final calculator = StringCalculator();

    test('should return 0 when input string is empty', () {
      expect(calculator.add(''), 0);
    });
  });
}
