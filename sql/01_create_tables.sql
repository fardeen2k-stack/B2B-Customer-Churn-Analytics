CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
	company_name VARCHAR(150) NOT NULL,
	industy VARCHAR(100),
	country VARCHAR(100),
	company_size VARCHAR(50),
	annual_revenue NUMERIC(15,2),
	signup_date DATE NOT NULL,
	account_status VARCHAR(20) DEFAULT 'Active',
	sales_rep_id INTEGER,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(50),
	monthly_price NUMERIC(10,2),
	annual_price NUMERIC(10,2),
	max_users INTEGER,
	is_active BOOLEAN DEFAULT TRUE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE sales_reps (
    sales_rep_id SERIAL PRIMARY KEY,
	frist_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	region VARCHAR(50),
	hire_date DATE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);.

CREATE TABLE subscriptions(
    subscription_id SERIAL PRIMARY KEY ,
	customer_id INTEGER NOT NULL,
	product_id INTEGER NOT NULL,
	subscription_type VARCHAR(30),
	start_date DATE NOT NULL ,
	end_date DATE, 
	auto_renew BOOLEAN DEFAULT TRUE,
	status VARCHAR(20) DEFAULT 'Active',
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contracts (
    contract_id SERIAL PRIMARY KEY,
	subscriptin_id INTEGER NOT NULl,
	contract_lenght_months INTEGER,
	contract_value NUMERIC(10,2),
	signed_date DATE,
	expiry_date DATE,
	renewal_status VARCHAR(20),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    invoice_date DATE,
    due_date DATE,
    invoice_amount NUMERIC(12,2),
    invoice_status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_amount NUMERIC(12,2),
    payment_status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE usage_logs (
    usage_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    usage_date DATE,
    active_users INTEGER,
    login_count INTEGER,
    api_calls INTEGER,
    storage_used_gb NUMERIC(8,2),
    session_duration_minutes INTEGER
);
CREATE TABLE support_tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    ticket_date DATE,
    priority VARCHAR(20),
    issue_category VARCHAR(50),
    resolution_time_hours NUMERIC(8,2),
    satisfaction_score INTEGER
);
CREATE TABLE customer_health (
    health_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    health_score NUMERIC(5,2),
    churn_risk VARCHAR(20),
    last_login DATE,
    nps_score INTEGER,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);