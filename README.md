# Proyecto de Base de Datos para Tienda de Figuras de Anime

Este repositorio contiene los archivos SQL necesarios para configurar una base de datos PostgreSQL para una tienda de figuras de anime. El proyecto incluye la definición de tablas, inserción de datos de ejemplo y configuración inicial de la base de datos.

## Contenido del Repositorio

- **setup.sql**: Script para crear la base de datos y cargar la estructura de las tablas.
- **tables.sql**: Script para definir las tablas necesarias para el esquema de la tienda.
- **insertexample.sql**: Script para insertar datos de ejemplo en las tablas definidas.

## Requisitos

- **PostgreSQL**: Asegúrate de tener PostgreSQL instalado en tu sistema.
- **psql**: Cliente de línea de comandos de PostgreSQL.

## Instalación y Configuración

Sigue estos pasos para configurar la base de datos:

### 1. Clonar el repositorio

git clone <url-del-repositorio>
cd <nombre-del-repositorio>

### 2. Crear la base de datos y definir las tablas
Ejecuta el script setup.sql para crear la base de datos y definir las tablas:

psql -U <tu_usuario> -f setup.sql

### 3. Crear las tablas
Ejecuta el script tables.sql para definir las tablas necesarias:
psql -U <tu_usuario> -d ecommerce_db -f tables.sql

### 4. Insertar datos de ejemplo
Ejecuta el script insertexample.sql para insertar datos de prueba:
psql -U <tu_usuario> -d ecommerce_db -f insertexample.sql

## Descripción de las Tablas

## Descripción de las Tablas

### 1. **categories**
- **id**: Identificador único (PK)
- **name**: Nombre de la categoría

### 2. **products**
- **id**: Identificador único (PK)
- **name**: Nombre del producto
- **description**: Descripción del producto
- **price**: Precio del producto
- **category_id**: ID de la categoría (FK)
- **stock**: Cantidad disponible en stock
- **image_url**: URL de la imagen del producto

### 3. **users**
- **id**: Identificador único (PK)
- **username**: Nombre de usuario
- **email**: Correo electrónico
- **password_hash**: Hash de la contraseña

### 4. **cart_items**
- **id**: Identificador único (PK)
- **user_id**: ID del usuario (FK)
- **product_id**: ID del producto (FK)
- **quantity**: Cantidad del producto

### 5. **orders**
- **id**: Identificador único (PK)
- **user_id**: ID del usuario (FK)
- **order_date**: Fecha del pedido
- **total_amount**: Monto total del pedido
- **status**: Estado del pedido (por defecto: "Pending")

### 6. **order_items**
- **id**: Identificador único (PK)
- **order_id**: ID del pedido (FK)
- **product_id**: ID del producto (FK)
- **quantity**: Cantidad del producto en el pedido
- **price**: Precio del producto en el pedido

## Índices

### Índices de **products**
- **idx_products_price**: Índice en el campo `price`
- **idx_products_name**: Índice en el campo `name`
- **idx_products_category_price**: Índice compuesto por `category_id` y `price`

### Índices de **users**
- **idx_users_username**: Índice en el campo `username`

### Índices de **categories**
- **idx_categories_name**: Índice en el campo `name`



##  Ejemplo de Uso

### Listar todos los productos disponibles:
SELECT * FROM products;

### Buscar productos por categoría:
SELECT p.name, p.price 
FROM products p
JOIN categories c ON p.category_id = c.id
WHERE c.name = 'Naruto';

### Ver pedidos realizados por un usuario específico:
SELECT o.id, o.order_date, o.total_amount 
FROM orders o
JOIN users u ON o.user_id = u.id
WHERE u.username = 'narutoFan';

Desarrollado por Jose Toledo Arcic







