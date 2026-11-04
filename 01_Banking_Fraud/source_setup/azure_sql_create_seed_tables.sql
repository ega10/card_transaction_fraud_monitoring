-- Azure SQL seed destination: customer_master
IF OBJECT_ID('dbo.customer_master', 'U') IS NULL
BEGIN
  CREATE TABLE dbo.customer_master (
    [customer_id] NVARCHAR(255) NULL,
    [customer_segment] NVARCHAR(255) NULL,
    [onboarded_date] NVARCHAR(255) NULL,
    [home_country] NVARCHAR(255) NULL,
    [account_status] NVARCHAR(255) NULL,
    [kyc_status] NVARCHAR(255) NULL,
    [risk_band] NVARCHAR(255) NULL,
    [relationship_manager] NVARCHAR(255) NULL,
    [city] NVARCHAR(255) NULL,
    [customer_type] NVARCHAR(255) NULL
  );
END;
GO

-- Azure SQL seed destination: merchant_master
IF OBJECT_ID('dbo.merchant_master', 'U') IS NULL
BEGIN
  CREATE TABLE dbo.merchant_master (
    [merchant_id] NVARCHAR(255) NULL,
    [merchant_name] NVARCHAR(255) NULL,
    [merchant_category] NVARCHAR(255) NULL,
    [merchant_country] NVARCHAR(255) NULL,
    [onboarded_date] NVARCHAR(255) NULL,
    [merchant_status] NVARCHAR(255) NULL,
    [settlement_currency] NVARCHAR(255) NULL,
    [risk_band] NVARCHAR(255) NULL,
    [city] NVARCHAR(255) NULL,
    [acquirer] NVARCHAR(255) NULL
  );
END;
GO

-- Azure SQL seed destination: card_master
IF OBJECT_ID('dbo.card_master', 'U') IS NULL
BEGIN
  CREATE TABLE dbo.card_master (
    [card_id] NVARCHAR(255) NULL,
    [customer_id] NVARCHAR(255) NULL,
    [card_type] NVARCHAR(255) NULL,
    [issuer_country] NVARCHAR(255) NULL,
    [issue_date] NVARCHAR(255) NULL,
    [expiry_date] NVARCHAR(255) NULL,
    [card_status] NVARCHAR(255) NULL,
    [network] NVARCHAR(255) NULL,
    [daily_limit] NVARCHAR(255) NULL,
    [tokenized_flag] NVARCHAR(255) NULL
  );
END;
GO
