#property strict

#include "Core/Engine.mqh"
#include "Risk/RiskManager.mqh"
#include "Trading/OrderManager.mqh"
#include "Strategies/StrategyManager.mqh"
#include "Analytics/AnalyticsManager.mqh"
#include "Dashboard/DashboardManager.mqh"

CEngine            Engine;
CRiskManager       RiskManager;
COrderManager      OrderManager;
CStrategyManager   StrategyManager;
CAnalyticsManager  AnalyticsManager;
CDashboardManager  DashboardManager;

//----------------------------------

int OnInit()
{
   Engine.Initialize();

   Print("Quantum Nexus Started");

   return(INIT_SUCCEEDED);
}

//----------------------------------

void OnTick()
{
   DashboardManager.Update();
}

//----------------------------------

void OnDeinit(const int reason)
{
   Engine.Shutdown();
}
