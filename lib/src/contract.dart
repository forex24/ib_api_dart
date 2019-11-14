import 'deltga_neutral_contract.dart';
import 'combo_leg.dart';

class Contract {
  int conid;
  String symol;
  String secType;
  String lastTradeDateOrContractMonth;
  double strike;
  String right;
  String multiplier;
  String exchange;
  String primaryExch;
  String currency;
  String localSymbol;
  String tradingClass;
  String secIdType;
  String secId;
  DeltaNeutralContract deltaNeutralContract;
  bool includeExpired;
  String comboLegsDescrip;
  List<ComboLeg> comboLegs;
}

