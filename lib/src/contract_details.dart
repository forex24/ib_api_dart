import 'contract.dart';
import 'tag_value.dart';

class ContractDetails
{
    Contract contract;
    String marketName;
    double minTick;
    int priceMagnifier;
    String orderTypes;
    String validExchanges;
    int underConid;
    String longName;
    String contractMonth;
    String industry;
    String category;
    String subcategory;
    String timeZoneId;
    String tradingHours;
    String liquidHours;
    String evRule;
    double evMultiplier;
    int mdSizeMultiplier;
    List<TagValue> secIdList;
    int aggGroup;
    String underSymbol;
    String underSecType;
    String marketRuleIds;
    String realExpirationDate;
    String lastTradeTime;
    String cusip;
    String ratings;
    String descAppend;
    String bondType;
    String couponType;
    bool callable = false;
    bool putable = false;
    double coupon = 0;
    bool convertible = false;
    String maturity;
    String issueDate;
    String nextOptionDate;
    String nextOptionType;
    bool nextOptionPartial = false;
    String notes;
}