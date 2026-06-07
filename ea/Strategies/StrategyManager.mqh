#ifndef STRATEGYMANAGER_MQH
#define STRATEGYMANAGER_MQH

#include "Trend/TrendStrategy.mqh"
#include "Breakout/BreakoutStrategy.mqh"

class CStrategyManager
{
private:

   CTrendStrategy    m_trend;
   CBreakoutStrategy m_breakout;

public:

   CStrategyManager()
   {
   }

   double GetBestScore()
   {
      double trendScore    = m_trend.GetScore();
      double breakoutScore = m_breakout.GetScore();

      if(trendScore > breakoutScore)
         return trendScore;

      return breakoutScore;
   }
};

#endif
