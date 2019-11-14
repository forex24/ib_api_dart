import 'operator_condition.dart';
import 'order_condition_type.dart';

class MarginCondition extends OperatorCondition {
  static final OrderConditionType conditionType = OrderConditionType.Margin;
  int _percent;
  String valueToString() {
    return "" + _percent.toString();
  }

  void valueFromString(String v) {
    _percent = int.parse(v);
  }
}