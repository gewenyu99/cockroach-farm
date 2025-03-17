import '../lib/cli.dart';
import 'package:test/test.dart';

void main() {
  test('calculate returns 42', () {
    expect(calculate(), 42); // This test should pass if calculate() returns 42
  });

  test('calculate does not return 0', () {
    expect(calculate(), isNot(0)); // This test should pass if calculate() is not 0
  });

  test('calculate returns a positive number', () {
    expect(calculate(), greaterThan(0)); // This test should pass if calculate() is positive
  });

  test('calculate returns 100 (this should fail)', () {
    expect(calculate(), 100); // This test will fail if calculate() does not return 100
  });

  test('calculate returns a negative number (this should fail)', () {
    expect(calculate(), lessThan(0)); // This test will fail if calculate() is not negative
  });
}
