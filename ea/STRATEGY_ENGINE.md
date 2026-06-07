# Quantum Nexus Strategy Engine

## Strategy Selection

The EA does not execute all strategies at the same time.

Every strategy generates a score.

The highest score becomes the active strategy.

## Available Strategies

1. Trend
2. Breakout
3. Scalping
4. Mean Reversion
5. Smart Money Concept
6. ICT

## Scoring Components

Trend Score
Volatility Score
Volume Score
Session Score
Liquidity Score

## Decision Logic

Highest score wins.

Minimum score required = 70

If score < 70

No Trade

## Risk Rules

Maximum Risk Per Trade = 1%

Maximum Daily Drawdown = 5%

Maximum Weekly Drawdown = 10%

Maximum Monthly Drawdown = 20%

## Trading Sessions

Asia
London
New York

## Trade Filters

Spread Filter

News Filter

Drawdown Filter

Volatility Filter
