﻿-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists dsubcategory;
drop table if exists campaign;

-- create subcategory table and set primary key

CREATE TABLE subcategory (
    subcategory_id varchar (50)  NOT NULL,
    subcategory varchar (50)  NOT NULL,
	primary key (subcategory_id)
);
-- create contacts table and set primary key

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (50)  NOT NULL,
    last_name varchar (50)  NOT NULL,
    email varchar (50)  NOT NULL,
	primary key (contact_id)
);

-- create category table and set primary key

CREATE TABLE category (
    category_id varchar (50)   NOT NULL,
    category varchar (50)  NOT NULL,
	primary key (category_id)
);


-- create campaign table and set primary key and foreign keys

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (100)  NOT NULL,
    description varchar (100)  NOT NULL,
    goal double   NOT NULL,
    pledged double   NOT NULL,
    outcome varchar (100)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (100)  NOT NULL,
    currency varchar (100)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (100)  NOT NULL,
    subcategory_id varchar (100)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign


