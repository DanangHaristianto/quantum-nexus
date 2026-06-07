# Quantum Nexus Core Engine

## Responsibilities

1. Load Configuration
2. Load Strategies
3. Load Risk Engine
4. Load Analytics
5. Load Dashboard
6. Execute Trading Cycle

## Startup Flow

EA Start

↓

Initialize Engine

↓

Load Config

↓

Load Strategies

↓

Load Risk Manager

↓

Load Dashboard

↓

Start Trading Loop

## Trading Cycle

Receive Market Data

↓

Calculate Scores

↓

Select Strategy

↓

Validate Risk

↓

Execute Trade

↓

Update Analytics

↓

Update Dashboard

↓

Save Report

## Emergency Stop

Conditions

- Daily DD exceeded
- Weekly DD exceeded
- Monthly DD exceeded
- Margin too low
- License expired
