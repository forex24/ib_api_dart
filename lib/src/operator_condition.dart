import 'order_condition.dart';

abstract class OperatorCondition extends OrderCondition {
  bool _isMore;
  String valueToString();
  void valueFromString(String v);
}