#property strict

#include <Trade/Trade.mqh>

CTrade trade;

// ===== CONFIG =====
input double RiskPerTrade = 1.0;
input int MaxSpread = 30;
input int MagicNumber = 2026001;

// ===== INIT =====
int OnInit()
{
   Print("Quantum Nexus EA Initialized");
   return(INIT_SUCCEEDED);
}

// ===== MAIN LOOP =====
void OnTick()
{
   if(!IsTradeAllowed()) return;
   if(!CheckSpread()) return;

   double signal = GetSignalScore();

   if(signal < 70)
      return;

   if(PositionsTotal() == 0)
   {
      ExecuteTrade(signal);
   }
}

// ===== SIGNAL ENGINE (placeholder scoring system) =====
double GetSignalScore()
{
   double score = 0;

   // simple placeholder logic (nanti diganti AI scoring engine)
   if(iClose(_Symbol, PERIOD_M5, 0) > iMA(_Symbol, PERIOD_M5, 20, 0, MODE_EMA, PRICE_CLOSE, 0))
      score += 40;

   if(iRSI(_Symbol, PERIOD_M5, 14, PRICE_CLOSE, 0) < 30)
      score += 30;

   if(iRSI(_Symbol, PERIOD_M5, 14, PRICE_CLOSE, 0) > 70)
      score += 10;

   return score;
}

// ===== EXECUTION =====
void ExecuteTrade(double score)
{
   double lot = CalculateLotSize();

   if(iClose(_Symbol, PERIOD_M5, 0) > iOpen(_Symbol, PERIOD_M5, 0))
   {
      trade.Buy(lot, _Symbol, 0, 0, 0, "Quantum Buy");
   }
   else
   {
      trade.Sell(lot, _Symbol, 0, 0, 0, "Quantum Sell");
   }
}

// ===== RISK =====
double CalculateLotSize()
{
   double balance = AccountInfoDouble(ACCOUNT_BALANCE);
   double lot = (balance * RiskPerTrade / 100.0) / 1000.0;

   if(lot < 0.01) lot = 0.01;
   return lot;
}

// ===== FILTER =====
bool CheckSpread()
{
   double spread = (SymbolInfoDouble(_Symbol, SYMBOL_ASK) -
                    SymbolInfoDouble(_Symbol, SYMBOL_BID)) / _Point;

   return (spread <= MaxSpread);
}

bool IsTradeAllowed()
{
   return true;
}
