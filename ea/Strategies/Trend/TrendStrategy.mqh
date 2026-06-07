#ifndef TRENDSTRATEGY_MQH
#define TRENDSTRATEGY_MQH

class CTrendStrategy
{
public:

   CTrendStrategy()
   {
   }

   double GetScore()
   {
      return 0.0;
   }

   bool IsBuySignal()
   {
      return false;
   }

   bool IsSellSignal()
   {
      return false;
   }
};

#endif
