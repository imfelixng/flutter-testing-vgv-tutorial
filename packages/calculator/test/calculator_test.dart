import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group('Calculator', () {
    group('init', () {
      test(
        'Calculator creates a non null object',
        () {
          expect(calculator, isNotNull);
        },
      );
    });

    group('add', () {
      test(
        'the calculator returns 4 when adding 2 and 2',
        () {
          final result = calculator.add(2, 2);
          expect(result, 4.0, reason: 'It should be exactly 4');
        },
      );

      test(
        'the calculator returns 6 when adding 3 and 3',
        () {
          final result = calculator.add(3, 3);
          expect(result, 6.0, reason: 'It should be exactly 6');
        },
      );
    });

    group('subtract', () {
      test(
        'the calculator returns 5 when subtracting 7 and 2',
        () {
          final result = calculator.subtract(7, 2);
          expect(result, 5.0, reason: 'It should be exactly 5');
        },
      );

      test(
        'the calculator returns 4 when subtracting 7 and 3',
        () {
          final result = calculator.subtract(7, 3);
          expect(result, 4.0, reason: 'It should be exactly 4');
        },
      );
    });

    group('multiply', () {
      test(
        'the calculator returns 16 when multiplying 8 and 2',
        () {
          final result = calculator.multiply(8, 2);
          expect(result, 16.0, reason: 'It should be exactly 16');
        },
      );

      test(
        'the calculator returns 12 when multiplying 6 and 2',
        () {
          final result = calculator.multiply(6, 2);
          expect(result, 12.0, reason: 'It should be exactly 12');
        },
      );
    });

    group('divide', () {
      test(
        'the calculator returns 4 when dividing 8 and 2',
        () {
          final result = calculator.divide(8, 2);
          expect(result, 4.0, reason: 'It should be exactly 4');
        },
      );

      test(
        'the calculator returns 5 when dividing 10 and 2',
        () {
          final result = calculator.divide(10, 2);
          expect(result, 5.0, reason: 'It should be exactly 5');
        },
      );

      test(
        'the calculator throws an ArgumentError when dividing by zero',
        () {
          expect(() => calculator.divide(10, 0), throwsArgumentError);
        },
      );
    });

    group('powerOfTwo', () {
      test('returns 81 when the input is 9', () async {
        expect(await calculator.powerOfTwo(9), 81);
      });
    });

    group('pi', () {
      test('emits [3, 3.1, 3.14, 3.141, 3.1415] in that order', () {
        expect(
          calculator.pi(),
          emitsInOrder([3, 3.1, 3.14, 3.141, 3.1415]),
        );
      });
    });
  });
}
