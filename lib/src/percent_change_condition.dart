import 'contract_condition.dart';
import 'order_condition_type.dart';

class PercentChangeCondition extends ContractCondition {
  static final OrderConditionType conditionType = OrderConditionType.PercentChange;

  double _changePercent = double.maxFinite;

  String valueToString() {
    return "" + _changePercent.toString();
  }

  void valueFromString(String v) {
    _changePercent = double.parse(v);
  }
}