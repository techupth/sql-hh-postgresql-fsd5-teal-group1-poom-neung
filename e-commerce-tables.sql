-- Start writing code here
CREATE TABLE users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  username varchar(255) unique NOT NULL ,
  email varchar(255) unique not null,
  password varchar(255) not null,
  created_at TIMESTAMPTZ unique NOT NULL
  
);

CREATE TABLE products (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(255) NOT NULL ,
  description text,
  price numeric(10,2) not null,
  created_at TIMESTAMPTZ unique NOT NULL
  
);
CREATE TABLE categories (
  category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(255) unique NOT NULL ,
 
  created_at TIMESTAMPTZ unique NOT NULL
  
);

CREATE TABLE product_categories (
  product_categories_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
  category_id INT REFERENCES categories(category_id) ON DELETE CASCADE
    
);