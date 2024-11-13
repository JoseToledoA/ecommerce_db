-- insertexample.sql: Insertar datos de ejemplo

-- Insertar algunas categorías relacionadas con figuras de anime
INSERT INTO categories (name) VALUES ('Naruto');
INSERT INTO categories (name) VALUES ('Dragon Ball');
INSERT INTO categories (name) VALUES ('One Piece');
INSERT INTO categories (name) VALUES ('Attack on Titan');
INSERT INTO categories (name) VALUES ('My Hero Academia');
INSERT INTO categories (name) VALUES ('Demon Slayer');
INSERT INTO categories (name) VALUES ('Neon Genesis Evangelion');

-- Insertar algunos productos de figuras de anime
INSERT INTO products (name, description, price, category_id, stock, image_url)
VALUES 
    ('Naruto Uzumaki Figure', 'A detailed action figure of Naruto Uzumaki', 39.99, 1, 100, 'https://example.com/naruto_uzumaki.jpg'),
    ('Goku SS Figure', 'Super Saiyan Goku action figure from Dragon Ball Z', 49.99, 2, 50, 'https://example.com/goku_ss.jpg'),
    ('Luffy Figure', 'Monkey D. Luffy action figure from One Piece', 34.99, 3, 30, 'https://example.com/luffy.jpg'),
    ('Eren Jaeger Figure', 'Action figure of Eren Jaeger from Attack on Titan', 44.99, 4, 40, 'https://example.com/eren_jaeger.jpg'),
    ('Deku Midoriya Figure', 'Izuku Midoriya (Deku) action figure from My Hero Academia', 42.99, 5, 25, 'https://example.com/deku_midoriyo.jpg'),
    ('Tanjiro Kamado Figure', 'Tanjiro Kamado figure from Demon Slayer', 46.99, 6, 60, 'https://example.com/tanjiro_kamado.jpg'),
    ('Rei Ayanami Figure', 'Rei Ayanami figure from Neon Genesis Evangelion', 54.99, 7, 15, 'https://example.com/rei_ayanami.jpg'),
    ('Saitama Figure', 'Saitama figure from One Punch Man', 38.99, 4, 80, 'https://example.com/saitama.jpg'),
    ('Shoto Todoroki Figure', 'Shoto Todoroki action figure from My Hero Academia', 40.99, 5, 35, 'https://example.com/todoroki.jpg'),
    ('Zoro Figure', 'Roronoa Zoro action figure from One Piece', 44.99, 3, 55, 'https://example.com/zoro.jpg'),
    ('Tanjiro Kamado Nendoroid', 'Tanjiro Kamado Nendoroid action figure from Demon Slayer', 29.99, 6, 45, 'https://example.com/tanjiro_nendoroid.jpg'),
    ('Vegeta Figure', 'Vegeta action figure from Dragon Ball Z', 49.99, 2, 70, 'https://example.com/vegeta.jpg'),
    ('Levi Ackerman Figure', 'Levi Ackerman figure from Attack on Titan', 39.99, 4, 50, 'https://example.com/levi_ackerman.jpg'),
    ('Lelouch vi Britannia Figure', 'Lelouch vi Britannia figure from Code Geass', 59.99, 2, 20, 'https://example.com/lelouch.jpg');

-- Insertar tres usuarios
INSERT INTO users (username, email, password_hash)
VALUES 
    ('narutoFan', 'naruto@example.com', 'hashedpassword1'),
    ('gokuMaster', 'goku@example.com', 'hashedpassword2'),
    ('luffyPirateKing', 'luffy@example.com', 'hashedpassword3');
