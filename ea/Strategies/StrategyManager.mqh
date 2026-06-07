#ifndef STRATEGYMANAGER_MQH
#define STRATEGYMANAGER_MQH

class CStrategyManager
{
public:

   double GetTrendScore()
   {
      double emaFast = iMA(_Symbol, PERIOD_M5, 10, 0, MODE_EMA, PRICE_CLOSE, 0);
      double emaSlow = iMA(_Symbol, PERIOD_M5, 20, 0, MODE_EMA, PRICE_CLOSE, 0);

      if(emaFast > emaSlow)
         return 80;

      if(emaFast < emaSlow)
         return 20;

      return 50;
   }

   double GetBreakoutScore()
   {
      double high = iHigh(_Symbol, PERIOD_M5, 1);
      double close = iClose(_Symbol, PERIOD_M5, 0);

      if(close > high)
         return 85;

      return 40;
   }

   double GetBestScore()
   {
      double trendScore = GetTrendScore();
      double breakoutScore = GetBreakoutScore();

      if(trendScore >= breakoutScore)
         return trendScore;

      return breakoutScore;
   }

   int GetSignal()
   {
      double score = GetBestScore();

      if(score >= 75)
         return 1;  // BUY

      if(score <= 35)
         return -1; // SELL

      return 0; // NO TRADE
   }
};

#endif
