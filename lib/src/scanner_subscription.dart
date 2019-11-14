class ScannerSubscription {
    static int NO_ROW_NUMBER_SPECIFIED = -1;

    int numberOfRows = NO_ROW_NUMBER_SPECIFIED;
    String instrument;
    String locationCode;
    String scanCode;
    double abovePrice = double.maxFinite;
    double belowPrice = Double.MAX_VALUE;
    int aboveVolume = Integer.MAX_VALUE;
    int averageOptionVolumeAbove = Integer.MAX_VALUE;
    double marketCapAbove = Double.MAX_VALUE;
    double marketCapBelow = Double.MAX_VALUE;
    String moodyRatingAbove;
    String moodyRatingBelow;
    String spRatingAbove;
    String spRatingBelow;
    String maturityDateAbove;
    String maturityDateBelow;
    double couponRateAbove = Double.MAX_VALUE;
    double couponRateBelow = Double.MAX_VALUE;
    bool excludeConvertible;
    String scannerSettingPairs;
    String stockTypeFilter;
    }