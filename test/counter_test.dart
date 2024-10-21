import 'package:flutter_test/flutter_test.dart';
import 'package:jenkins_app/counter.dart';

void main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  group('Counter class -', () {
    test('given counter when instantiated then count should be 0', () {
      final val = counter.count;
      expect(val, 0);
    });

    test('given counter when incremented then count should be 1', () {
      counter.incrementCounter();
      final val = counter.count;
      expect(val, 1);
    });
  });
}