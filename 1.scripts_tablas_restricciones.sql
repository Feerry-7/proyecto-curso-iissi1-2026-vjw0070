//-- 1. Creación de Tipos Enumerados (Enum)

CREATE TYPE estado_enum AS ENUM ('pagado', 'enviado', 'cancelado');
CREATE TYPE metodo_pago_enum AS ENUM ('tarjeta', 'paypal', 'transferencia', 'Bizum');

//-- 2. Tabla Base: Usuario (Superclase)

CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) UNIQUE NOT NULL,
  contraseña VARCHAR(9) NOT NULL 

);
//-- 3. Tabla Cliente (Subclase de Usuario)
  
CREATE TABLE clientes(
  id INT PRIMARY KEY AUTO_INCREMENT,
  usuarioId INT NOT NULL UNIQUE,
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
 usuarioId INT NOT NULL UNIQUE,
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
clienteId INT NOT NULL,
FOREIGN KEY (clienteId) REFERENCES clientes(id)
   ON DELETE CASCADE 
   ON UPDATE CASCADE

);

//-- 6. Tabla Categoria (Soporta subcategorías mediante autorreferencia)
CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO-INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255),
  categoria_padre_id INT NULL,
  FOREIGN KEY (categoria_padre_id) REFERENCES categorias(id)
);
//-- 7. Tabla Producto
CREATE TABLE productos (
  id INT PRIMARY KEY AUTO-INCREMENT 
  nombre VARCHAR (255) NOT NULL,
  descripcion VARCHAR (255),
  precio  DECIMAL(10,2) NOT NULL,
  imagen VARCHAR(255) NULL,
  stock INT NOT NULL DEFAULT 0,
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

  
//-- 8. Tabla Pedido
CREATE TABLE pedidos (
id INT PRIMARY KEY AUTO-INCREMENT,
fecha_envio  DATETIME  ,
fecha_pago DATETIME,
fecha_cancelacion DATETIME,
metodo_pago metodo_pago_enum,
precio_total DECIMAL(10,2) NOT NULL DEFAULT 0,
estado estado_enum GENERATED ALWAYS AS (
  CASE
      WHEN fecha_cancelacion IS NOT NULL THEN 'cancelado'::estado_enum
      WHEN fecha_envio IS NOT NULL THEN 'enviado'::estado_enum
      WHEN fecha_pago IS NOT NULL THEN 'pagado'::estado_enum
      ELSE NULL
    END
  ) STORED,
  FOREIGN KEY (empleado_id) REFERENCES empleados(id) ON DELETE SET NULL,
  FOREIGN KEY (direccion_id) REFERENCES direcciones(id) ON DELETE RESTRICT
);


  
);
//-- 9. Tabla Asociativa: LineaPedido (Relación N:M entre Pedido y Producto)
CREATE TABLE linea_pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cantidad INT DEFAULT 0,
  precio-unitario DECIMAL(10,2) NOT NULL DEFAULT 0,
  UNIQUE (pedido_id, producto_id),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
    ON DELETE CASCADE,
  FOREIGN KEY (producto_id) REFERENCES productos(id)
    ON DELETE RESTRICT
);
