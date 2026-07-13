ALTER TABLE customers
ADD CONSTRAINT fk_customers_sales_rep
FOREIGN KEY (sales_rep_id)
REFERENCES sales_reps(sales_rep_id);

ALTER TABLE subscriptions
ADD CONSTRAINT fk_subscription_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE subscriptions
ADD CONSTRAINT fk_subscription_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE contracts
ADD CONSTRAINT fk_contract_subscription
FOREIGN KEY (subscription_id)
REFERENCES subscriptions(subscription_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE payments
ADD CONSTRAINT fk_payment_invoice
FOREIGN KEY (invoice_id)
REFERENCES invoices(invoice_id);

ALTER TABLE usage_logs
ADD CONSTRAINT fk_usage_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE support_tickets
ADD CONSTRAINT fk_ticket_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE customer_health
ADD CONSTRAINT fk_health_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);