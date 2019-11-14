import 'order_condition_type.dart';

abstract class OrderCondition {
  OrderConditionType type;
  bool isConjunctionConnection;
}