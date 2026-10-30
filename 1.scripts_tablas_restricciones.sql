//-- 1. Creación de Tipos Enumerados (Enum)

CREATE TYPE estado_enum AS ENUM ('pagado', 'enviado', 'cancelado');
CREATE TYPE metodo_pago_enum AS ENUM ('tarjeta', 'paypal', 'transferencia', 'Bizum');

//-- 2. Tabla Base: Usuario (Superclase)

CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) UNIQUE NOT NULL,
  contraseña VARCHAR(255) NOT NULL ,

);
//-- 3. Tabla Cliente (Subclase de Usuario)
  
CREATE TABLE clientes(
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuarioId INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL,
  FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

//-- 4. Tabla Empleado (Subclase de Usuario)
CREATE TABLE empleados(
 id INT PRIMARY KEY AUTO_INCREMENT,
 usuarioId INT NOT NULL,
 codigo VARCHAR(255) UNIQUE NOT NULL,
  FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
 

//-- 5. Tabla Dirección

CREATE TABLE direcciones(
id INT PRIMARY KEY AUTO_INCREMENT,
calle VARCHAR(255) NOT NULL,
codigo_postal VARCHAR(20) NOT NULL,
provincia VARCHAR(100) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
//clienteid?????

);

//-- 6. Tabla Categoria (Soporta subcategorías mediante autorreferencia)
CREATE TABLE categorias ();
//-- 7. Tabla Producto
CREATE TABLE productos ();
//-- 8. Tabla Pedido
CREATE TABLE pedidos ();
//-- 9. Tabla Asociativa: LineaPedido (Relación N:M entre Pedido y Producto)
CREATE TABLE linea_pedidos ();
