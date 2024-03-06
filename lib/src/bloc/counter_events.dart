part of 'counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();
}

final class CounterIncrement extends CounterEvent {
  const CounterIncrement();
}

final class CounterDecrement extends CounterEvent {
  const CounterDecrement();
}