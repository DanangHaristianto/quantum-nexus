#ifndef ANALYTICSMANAGER_MQH
#define ANALYTICSMANAGER_MQH

class CAnalyticsManager
{
private:

   int m_totalTrades;
   int m_winningTrades;
   int m_losingTrades;

public:

   CAnalyticsManager()
   {
      m_totalTrades   = 0;
      m_winningTrades = 0;
      m_losingTrades  = 0;
   }

   void AddWin()
   {
      m_totalTrades++;
      m_winningTrades++;
   }

   void AddLoss()
   {
      m_totalTrades++;
      m_losingTrades++;
   }

   int TotalTrades()
   {
      return m_totalTrades;
   }

   int WinningTrades()
   {
      return m_winningTrades;
   }

   int LosingTrades()
   {
      return m_losingTrades;
   }
};

#endif
