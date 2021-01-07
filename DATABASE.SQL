CREATE DATABASE IF NOT EXISTS prueba_om;
USE prueba_om;

CREATE TABLE IF NOT EXISTS category(
    ID              INT(255) NOT NULL,
    name            VARCHAR(100) NOT NULL,
    created_at      TIMESTAMP DEFAULT NULL,
    updated_at      TIMESTAMP DEFAULT NULL,
    CONSTRAINT pk_category PRIMARY KEY(ID)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS currency(
    ID          INT(255) AUTO_INCREMENT NOT NULL,
    shortname   CHAR(3) NOT NULL,
    longname    VARCHAR(100) NOT NULL,
    symbol      CHAR(3) NOT NULL,
    created_at  TIMESTAMP DEFAULT NULL,
    updated_at  TIMESTAMP DEFAULT NULL,
    CONSTRAINT pk_currency PRIMARY KEY(ID)
)ENGINE=InnoDB;

ALTER TABLE tablename CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS country(
    ID          INT(255) NOT NULL,
    shortname   CHAR(3) NOT NULL,
    longname    VARCHAR(100) NOT NULL,
    created_at  TIMESTAMP DEFAULT NULL,
    updated_at  TIMESTAMP DEFAULT NULL,
    CONSTRAINT pk_country PRIMARY KEY(ID)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS item(
    ID          INT AUTO_INCREMENT NOT NULL,
    title       VARCHAR(100) NOT NULL,
    category_id INT,
    price       REAL NOT NULL,
    symbol      CHAR(1) NOT NULL,
    currency_id INT NOT NULL,
    country_id  INT NOT NULL,
    created_at  TIMESTAMP NOT NULL,
    updated_at  TIMESTAMP DEFAULT NULL,
    CONSTRAINT pk_item PRIMARY KEY(ID),
    CONSTRAINT fk_item_category FOREIGN KEY(category_id) REFERENCES category(ID),
    CONSTRAINT fk_currency_id   FOREIGN KEY(currency_id) REFERENCES currency(ID),
    CONSTRAINT fk_country_id    FOREIGN KEY(country_id)  REFERENCES country(ID)

)ENGINE=InnoDB;