import 'contract_condition.dart';
import 'order_condition_type.dart';

class PriceCondition extends ContractCondition {
  static final OrderConditionType conditionType = OrderConditionType.Price;

  double _price;
  int _triggerMethod;

  String valueToString() {
    return "" + _price.toString();
  }

  void valueFromString(String v) {
    _price = double.parse(v);
  }
}