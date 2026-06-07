#ifndef RISKMANAGER_MQH
#define RISKMANAGER_MQH

class CRiskManager
{
private:

   double m_risk_percent;

public:

   CRiskManager()
   {
      m_risk_percent = 1.0;
   }

   void SetRisk(double risk)
   {
      m_risk_percent = risk;
   }

   double GetRisk()
   {
      return m_risk_percent;
   }

   bool CanTrade()
   {
      return true;
   }
};

#endif
