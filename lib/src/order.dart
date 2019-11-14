import 'tag_value.dart';
import 'soft_dollar_tier.dart';
import 'order_type.dart';
import 'order_comboleg.dart';
import 'order_condition.dart';

class Order {
    // static int 	CUSTOMER = 0;
    // static int 	FIRM = 1;
    // static char    OPT_UNKNOWN='?';
    // static char    OPT_BROKER_DEALER='b';
    // static char    OPT_CUSTOMER ='c';
    // static char    OPT_FIRM='f';
    // static char    OPT_ISEMM='m';
    // static char    OPT_FARMM='n';
    // static char    OPT_SPECIALIST='y';
    // static int 	AUCTION_MATCH = 1;
    // static int 	AUCTION_IMPROVEMENT = 2;
    // static int 	AUCTION_TRANSPARENT = 3;
    // static String  EMPTY_STR = "";

    // order id's
    int  clientId;
    int  orderId;
    int  permId;
    int  parentId; // Parent order Id, to associate Auto STP or TRAIL orders with the original order.

    // primary attributes
    String      action = "BUY";
    double      totalQuantity;
    int         displaySize;
    String      orderType = "LMT";
    double      lmtPrice = double.maxFinite;
    double      auxPrice = double.maxFinite;
    String      tif = "DAY"; // "Time in Force" - DAY, GTC, etc.

    // Clearing info
    String   account; // IB account
    String   settlingFirm;
    String   clearingAccount; // True beneficiary of the order
    String   clearingIntent; // "" (Default), "IB", "Away", "PTA" (PostTrade)
    
    // secondary attributes
    bool allOrNone;
    bool blockOrder;
    bool hidden;
    bool outsideRth;
    bool sweepToFill;
    double  percentOffset = double.maxFinite;   // for Relative orders; specify the decimal, e.g. .04 not 4
    double  trailingPercent = double.maxFinite; // for Trailing Stop orders; specify the percentage, e.g. 3, not .03
    double  trailStopPrice = double.maxFinite;  // stop price for Trailing Stop orders
    int     minQty = Integer.MAX_VALUE;
    String  goodAfterTime; // FORMAT: 20060505 08:00:00 EST
    String  goodTillDate;  // FORMAT: 20060505 08:00:00 EST or 20060505
    String  ocaGroup; // one cancels all group name
    String  orderRef;
    String  rule80A = "";
    int     ocaType = 0; // None
    int     triggerMethod = 0; // Default

    // extended order fields
    String activeStartTime; // GTC orders
    String activeStopTime;  // GTC orders

    // advisor allocation orders
    String faGroup;
    String faMethod = ""; // None;
    String faPercentage;
    String faProfile;

    // volatility orders
    double  volatility = double.maxFinite;  // enter percentage not decimal, e.g. 2 not .02
    int     volatilityType = Integer.MAX_VALUE; // None;
    int     continuousUpdate;
    int     referencePriceType = Integer.MAX_VALUE; // None;
    String  deltaNeutralOrderType = ""; // None;
    double  deltaNeutralAuxPrice = double.maxFinite;
    int     deltaNeutralConId;
    String  deltaNeutralOpenClose;
    bool deltaNeutralShortSale;
    int     deltaNeutralShortSaleSlot;
    String  deltaNeutralDesignatedLocation;

    // scale orders
    int     scaleInitLevelSize = Integer.MAX_VALUE;
    int     scaleSubsLevelSize = Integer.MAX_VALUE;
    double  scalePriceIncrement = double.maxFinite;
    double  scalePriceAdjustValue = double.maxFinite;
    int     scalePriceAdjustInterval = Integer.MAX_VALUE;
    double  scaleProfitOffset = double.maxFinite;
    bool scaleAutoReset;
    int     scaleInitPosition = Integer.MAX_VALUE;
    int     scaleInitFillQty = Integer.MAX_VALUE;
    bool scaleRandomPercent;
    String  scaleTable;

    // hedge orders
    String  hedgeType = "";
    String  hedgeParam; // beta value for beta hedge (in range 0-1), ratio for pair hedge

    // algo orders
    String              algoStrategy = "";
    List<TagValue> algoParams = new List<TagValue>();
    String              algoId;

    // combo orders
    List<TagValue>       smartComboRoutingParams = new List<TagValue>();
    List<OrderComboLeg>  orderComboLegs = new List<OrderComboLeg>();

    // processing control
    bool whatIf;
    bool transmit = true; // if false, order will be sent to TWS but not transmitted to server
    bool overridePercentageConstraints;
    
    // Institutional orders only
    String openClose = "O"; // O=Open, C=Close
    int    origin;          // 0=Customer, 1=Firm
    int    shortSaleSlot;   // 1 if you hold the shares, 2 if they will be delivered from elsewhere.  Only for Action="SSHORT
    String designatedLocation; // set when slot=2 only.
    int    exemptCode = -1;
    String deltaNeutralSettlingFirm;
    String deltaNeutralClearingAccount;
    String deltaNeutralClearingIntent;
    
    // SMART routing only
    double  discretionaryAmt = double.maxFinite;
    bool eTradeOnly;
    bool firmQuoteOnly;
    double  nbboPriceCap = double.maxFinite;
    bool optOutSmartRouting;

    // BOX or VOL ORDERS ONLY
    int     auctionStrategy; // 1=AUCTION_MATCH, 2=AUCTION_IMPROVEMENT, 3=AUCTION_TRANSPARENT

    // BOX ORDERS ONLY
    double startingPrice;
    double stockRefPrice;
    double delta = double.maxFinite;

    // pegged to stock or VOL orders
    double stockRangeLower;
    double stockRangeUpper;

    // COMBO ORDERS ONLY
    double basisPoints;      // EFP orders only, download only
    int    basisPointsType;  // EFP orders only, download only

    // Not Held
    bool  notHeld;

    // order misc options
    List<TagValue> orderMiscOptions;
    
    //order algo id
	bool solicited;
	
	bool randomizeSize;
	bool randomizePrice;
	
	//VER PEG2BENCH fields:
	int referenceContractId;
	double peggedChangeAmount;
	bool isPeggedChangeAmountDecrease;
	double referenceChangeAmount;
	String referenceExchangeId;
	OrderType adjustedOrderType;
	double triggerPrice = double.maxFinite;
	double adjustedStopPrice = double.maxFinite;
	double adjustedStopLimitPrice = double.maxFinite;
	double adjustedTrailingAmount = double.maxFinite;
	int adjustableTrailingUnit;
	double lmtPriceOffset = double.maxFinite;
	
	List<OrderCondition> conditions = new List<OrderCondition>(); //= new ArrayList<>();
	bool conditionsCancelOrder;
	bool conditionsIgnoreRth;
    
    // models
    String modelCode;
    
	String extOperator;
	SoftDollarTier softDollarTier;
	
	// native cash quantity
	double cashQty = double.maxFinite;
	
	String mifid2DecisionMaker = EMPTY_STR;
	String mifid2DecisionAlgo = EMPTY_STR;
    String mifid2ExecutionTrader = EMPTY_STR;
    String mifid2ExecutionAlgo = EMPTY_STR;	
    
    // don't use auto price for hedge
    bool dontUseAutoPriceForHedge;
    
    bool isOmsContainer;
    bool discretionaryUpToLimitPrice;
    
    String  autoCancelDate;
    double  filledQuantity;
    int     refFuturesConId;
    bool autoCancelParent;
    String  shareholder;
    bool imbalanceOnly;
    bool routeMarketableToBbo;
    int    parentPermId;

    bool usePriceMgmtAlgo;
}