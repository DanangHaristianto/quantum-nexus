-- USERS

CREATE TABLE users (
    id UUID PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ACCOUNTS

CREATE TABLE accounts (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    broker_name VARCHAR(100),
    account_number VARCHAR(100),
    account_type VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- LICENSES

CREATE TABLE licenses (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    license_key VARCHAR(255),
    status VARCHAR(50),
    expiry_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- TRADES

CREATE TABLE trades (
    id UUID PRIMARY KEY,
    symbol VARCHAR(50),
    strategy VARCHAR(100),
    trade_type VARCHAR(20),
    lot DECIMAL(10,2),
    entry_price DECIMAL(18,8),
    exit_price DECIMAL(18,8),
    profit DECIMAL(18,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
