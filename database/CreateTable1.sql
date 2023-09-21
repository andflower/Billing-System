﻿CREATE DATABASE BillingSystem;

USE BillingSystem;

CREATE TABLE TABLE_USER
(
USER_ID INT PRIMARY KEY IDENTITY,
USER_ACCOUNT VARCHAR(50),
USER_PASSWORD VARCHAR(50),
USER_NAME VARCHAR(50),
USER_PHONE VARCHAR(50),
USER_EMAIL VARCHAR(50)
)

CREATE TABLE TABLE_CUSTOMER
(
CUSTOMER_ID INT PRIMARY KEY IDENTITY,
CUSTOMER_NAME VARCHAR(50),
CUSTOMER_PHONE VARCHAR(50),
CUSTOMER_EMAIL VARCHAR(50),
CUSTOMER_ADDRESS VARCHAR(200)
)

CREATE TABLE TABLE_SUPPLIER
(
SUPPLIER_ID INT PRIMARY KEY IDENTITY,
SUPPLIER_NAME VARCHAR(50),
SUPPLIER_PHONE VARCHAR(50),
SUPPLIER_EMAIL VARCHAR(50),
SUPPLIER_ADDRESS VARCHAR(200)
)

CREATE TABLE TABLE_PROCUCT
(
PRODUCT_ID INT PRIMARY KEY IDENTITY,
PRODUCT_NAME VARCHAR(50),
PRODUCT_PRICE BIGINT,
PRODUCT_COST BIGINT,
PRODUCT_IMAGE VARBINARY(MAX)
)

CREATE TABLE TABLE_INVOICE_MAIN
(
MAIN_ID INT PRIMARY KEY IDENTITY,
PERSON_ID INT,
MAIN_DATE DATE,
MAIN_DUE_DATE DATE,					-- ¸¸±âÀÏ or Á¤»ê ³¯Â¥
MAIN_TYPE VARCHAR(10),
PAYMENT_TYPE VARCHAR(10),
MAIN_TOTAL BIGINT,
DISCOUNT BIGINT,
NETAMOUNT BIGINT					-- ¼ø ±Ý¾×
)

CREATE TABLE TABLE_INVOICE_DETAIL
(
DETAIL_ID INT PRIMARY KEY IDENTITY,
MAIN_ID INT,
PRODUCT_ID INT,
QTY INT,
PRICE BIGINT,
AMOUNT BIGINT
)

CREATE TABLE TABLE_PAYMENT
(
PAYMENT_ID INT PRIMARY KEY IDENTITY,
MAIN_ID INT,
MAIN_DATE DATE,
PERSON_ID INT,
DESCRIPTION VARCHAR(200),
NETAMOUT BIGINT
)

CREATE TABLE TABLE_RECEIPT
(
RECEIPT_ID INT PRIMARY KEY IDENTITY,
MAIN_ID INT,
MAIN_DATE DATE,
PERSON_ID INT,
DESCRIPTION VARCHAR(200),
NETAMOUT BIGINT
)

ALTER TABLE TABLE_INVOICE_DETAIL ALTER COLUMN PRICE BIGINT;