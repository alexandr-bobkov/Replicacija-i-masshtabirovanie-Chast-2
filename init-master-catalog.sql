-- Включение параметров генерации WAL для репликации на мастере
ALTER SYSTEM SET wal_level = 'replica';
ALTER SYSTEM SET max_wal_senders = 5;

-- Создание таблиц каталога
CREATE TABLE shops (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    address TEXT
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(150) NOT NULL,
    price NUMERIC(10, 2),
    stock INT DEFAULT 0
);

-- Наполнение тестовыми данными
INSERT INTO shops (name, city, address) VALUES 
('Книжный Мир1', 'Москва', 'ул. Ленина, д. 10'),
('Кгижный Мир2', 'Санкт-Петербург', 'ул. Ленина, д. 20');

INSERT INTO books (title, author, price, stock) VALUES 
('Мастер и Маргарита', 'Михаил Булгаков', 550.00, 15),
('Преступление и наказание', 'Федор Достоевский', 480.00, 8);
