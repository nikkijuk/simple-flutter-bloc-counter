import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_counter/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterBloc', () {
    test('initial state is 0', () {
      expect(CounterBloc().state, 0);
    });

    blocTest<CounterBloc, int>(
      'emits [1] when increment is called',
      build: CounterBloc.new,
      act: (bloc) => bloc.add(Increment()),
      expect: () => [1],
    );
  });
}
