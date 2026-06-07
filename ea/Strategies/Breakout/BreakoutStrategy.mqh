#ifndef BREAKOUTSTRATEGY_MQH
#define BREAKOUTSTRATEGY_MQH

class CBreakoutStrategy
{
public:

   CBreakoutStrategy()
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
