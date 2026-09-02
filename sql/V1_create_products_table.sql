--liquibase formatted sql

--changeset nida:create-products-table labels:v1 context:demo
CREATE TABLE products (
    id             SERIAL PRIMARY KEY,
    name           VARCHAR(100) NOT NULL,
    price          DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

--rollback DROP TABLE products;
