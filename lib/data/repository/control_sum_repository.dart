import 'dart:async';

class ControlSumRepository {
  static int controlSum = 0;

  static var controller = StreamController<int>()..add(controlSum);
}
