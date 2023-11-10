ALTER DATABASE "crowdfunding_db" SET datestyle TO "ISO, MDY";

CREATE TABLE category(
 category_id VARCHAR PRIMARY KEY,
 category VARCHAR
);


CREATE TABLE contacts( 
  contact_id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);


CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR
);

-- Create a new table
CREATE TABLE campaign (
  cf_id INTEGER,
  contact_id INTEGER,
  company_name VARCHAR,
  description VARCHAR, 
  goal FLOAT,
  pledged FLOAT, 
  outcome VARCHAR, 
  backers_count INTEGER, 
  country VARCHAR,
  currency VARCHAR,
  launched_date Date, 
  end_date Date, 
  category_id VARCHAR,
  subcategory_id VARCHAR,
  PRIMARY KEY(cf_id, contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)

);

SELECT * FROM category; 
SELECT * FROM contacts; 
SELECT * FROM subcategory;
SELECT * FROM campaign; 