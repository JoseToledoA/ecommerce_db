-- insertexample.sql: Insertar datos de ejemplo

-- Insertar algunas categorías
INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Clothing');
INSERT INTO categories (name) VALUES ('Toys');

-- Insertar algunos productos
INSERT INTO products (name, description, price, category_id, stock, image_url)
VALUES 
    ('Laptop', 'A high-end laptop', 999.99, 1, 10, 'https://example.com/laptop.jpg'),
    ('T-shirt', 'A comfortable cotton t-shirt', 19.99, 2, 50, 'https://example.com/tshirt.jpg'),
    ('Action Figure', 'A cool action figure', 24.99, 3, 30, 'https://example.com/actionfigure.jpg');

-- Insertar algunos usuarios
INSERT INTO users (username, email, password_hash)
VALUES 
    ('johndoe', 'johndoe@example.com', 'hashedpassword1'),
    ('janedoe', 'janedoe@example.com', 'hashedpassword2');