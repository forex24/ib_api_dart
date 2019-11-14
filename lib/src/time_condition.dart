import 'operator_condition.dart';
import 'order_condition_type.dart';

class TimeCondition extends OperatorCondition {
  static final OrderConditionType conditionType = OrderConditionType.Time;

String _time;

  String valueToString() {
    return _time;
  }

  void valueFromString(String v) {
    _time = v;
  }
}