enum Liquidities {
  None,
  Added,
  Removed,
  RoudedOut
}

class Execution {
    int 	orderId;
    int 	clientId;
    String 	execId;
    String 	time;
    String 	acctNumber;
    String 	exchange;
    String 	side;
    double 	shares;
    double 	price;
    int		permId;
    int     liquidation;
    double	cumQty;
    double	avgPrice;
    String  orderRef;
    String 	evRule;
    double 	evMultiplier;
    String  modelCode;
    Liquidities     lastLiquidity;
}