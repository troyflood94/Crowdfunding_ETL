CREATE TABLE Category (
    category_id VARCHAR(25) PRIMARY KEY,
    category VARCHAR(25)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY,
    subcategory VARCHAR(45)
);

CREATE TABLE Contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    email VARCHAR(90) UNIQUE
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(40),
    description VARCHAR(150),
    goal FLOAT8,
    pledged FLOAT8,
    outcome VARCHAR(15),
    backers_count INT,
    country VARCHAR(25),
    currency VARCHAR(5),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(25),
    subcategory_id VARCHAR(25),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
