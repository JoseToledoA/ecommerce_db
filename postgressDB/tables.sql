-- tables.sql: Definición de tablas

-- Crear tabla de categorías
CREATE TABLE IF NOT EXISTS categories (
    id bigint primary key generated always as identity,
    name text not null
);

-- Crear tabla de productos
CREATE TABLE IF NOT EXISTS products (
    id bigint primary key generated always as identity,
    name text not null,
    description text,
    price numeric(10, 2) not null,
    category_id bigint references categories(id),
    stock int not null,
    image_url text
);

-- Crear índice en el precio de los productos para mejorar las consultas por rango de precio
CREATE INDEX IF NOT EXISTS idx_products_price ON products(price);

-- Crear índice en el nombre de los productos para mejorar las búsquedas
CREATE INDEX IF NOT EXISTS idx_products_name ON products(name);

-- Crear índice compuesto para filtrado por categoría y precio
CREATE INDEX IF NOT EXISTS idx_products_category_price ON products (category_id, price);

-- Crear tabla de usuarios
CREATE TABLE IF NOT EXISTS users (
    id bigint primary key generated always as identity,
    username text not null unique,
    email text not null unique,
    password_hash text not null
);

-- Crear índice en el nombre de usuario para mejorar las búsquedas
CREATE INDEX IF NOT EXISTS idx_users_username ON users(username);

-- Crear tabla de detalles del carrito
CREATE TABLE IF NOT EXISTS cart_items (
    id bigint primary key generated always as identity,
    user_id bigint references users(id),
    product_id bigint references products(id) ON DELETE SET NULL,
    quantity int not null
);

-- Crear tabla de pedidos
CREATE TABLE IF NOT EXISTS orders (
    id bigint primary key generated always as identity,
    user_id bigint references users(id),
    order_date timestamp with time zone default now(),
    total_amount numeric(10, 2) not null,
    status text DEFAULT 'Pending'
);

-- Crear tabla de detalles del pedido
CREATE TABLE IF NOT EXISTS order_items (
    id bigint primary key generated always as identity,
    order_id bigint references orders(id),
    product_id bigint references products(id) ON DELETE SET NULL,
    quantity int not null,
    price numeric(10, 2) not null
);

-- Crear índice en el nombre de las categorías para mejorar las búsquedas
CREATE INDEX IF NOT EXISTS idx_categories_name ON categories(name);
