SHOW DATABASES;
USE bigdata_moon;
CREATE TABLE Categories(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    category_index INT
);

CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    age INT
);

CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    pub_year DATETIME NOT NULL,
    price INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    age INT
);

CREATE TABLE Purchases(
    purchase_id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_date DATETIME NOT NULL,
    quantity INT NOT NULL,
    purchase_price INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    book_id INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);