CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Наполнение тестовыми данными
INSERT INTO users (name, email) VALUES 
('Иван Иванов', 'ivan@example.com'),
('Анна Петрова', 'anna@example.com');
