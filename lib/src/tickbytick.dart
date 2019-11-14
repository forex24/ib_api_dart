 import 'tickattrib_bidask.dart';
 import 'tickattrib_last.dart';

 class TickByTick {
    int tickType; // 0 - None, 1 - Last, 2 - AllLast, 3 -BidAsk, 4 - MidPoint
    int time;  // in seconds
    double price;
    int size;
    TickAttribLast tickAttribLast;
    TickAttribBidAsk tickAttribBidAsk;
    String exchange;
    String specialConditions;
    double bidPrice;
    int bidSize;
    double askPrice;
    int askSize;
    double midPoint;
 }