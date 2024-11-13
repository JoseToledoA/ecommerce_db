-- setup.sql: Crear la base de datos ecommerce_db (si aún no existe)
CREATE DATABASE IF NOT EXISTS ecommerce_db;

-- Cambiar a la base de datos creada
\c ecommerce_db;

-- Incluir la creación de las tablas desde el archivo tables.sql
-- Se asume que las tablas ya están definidas en otro archivo
