CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255) UNIQUE NOT NULL,
  contraseña VARCHAR(9) NOT NULL 

);
-- 3. Tabla Cliente (Subclase de Usuario)
  
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

-- 4. Tabla Empleado (Subclase de Usuario)
CREATE TABLE empleados(
 id INT PRIMARY KEY AUTO_INCREMENT,
 usuarioId INT NOT NULL UNIQUE,
 codigo VARCHAR(255) UNIQUE NOT NULL,
  FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
 
-- 5. Tabla Dirección

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

-- 6. Tabla Categoria (Soporta subcategorías mediante autorreferencia)
CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255),
  categoria_padre_id INT NULL,
  FOREIGN KEY (categoria_padre_id) REFERENCES categorias(id)
);
-- 7. Tabla Producto
CREATE TABLE productos (
  id INT PRIMARY KEY AUTO_INCREMENT ,
  nombre VARCHAR (255) NOT NULL,
  descripcion VARCHAR (255),
  precio  DECIMAL(10,2) NOT NULL,
  imagen VARCHAR(255) NULL,
  stock INT NOT NULL DEFAULT 0,
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

  
-- 8. Tabla Pedido
CREATE TABLE pedidos (
id INT PRIMARY KEY AUTO_INCREMENT,
fecha_envio  DATETIME  ,
fecha_pago DATETIME,
fecha_cancelacion DATETIME,
metodo_pago  ENUM ('pagado', 'enviado', 'cancelado'),
precio_total DECIMAL(10,2) NOT NULL DEFAULT 0,
empleado_id INT NOT NULL,
direccion_id INT NOT NULL,
estado_enum  ENUM ('pagado', 'enviado', 'cancelado')GENERATED ALWAYS AS  (
  CASE
      WHEN fecha_cancelacion IS NOT NULL THEN 'cancelado'
      WHEN fecha_envio IS NOT NULL THEN 'enviado'
      WHEN fecha_pago IS NOT NULL THEN 'pagado'
      ELSE NULL
    END
  ) STORED,
  FOREIGN KEY (empleado_id) REFERENCES empleados(id) ON DELETE SET NULL,
  FOREIGN KEY (direccion_id) REFERENCES direcciones(id) ON DELETE RESTRICT
);


  
-- 9. Tabla Asociativa: LineaPedido (Relación N:M entre Pedido y Producto)
CREATE TABLE linea_pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cantidad INT DEFAULT 0,
  precio_unitario DECIMAL(10,2) NOT NULL DEFAULT 0,
  pedido_id INT  NOT NULL ,
  producto_id INT  NOT NULL ,
  UNIQUE (pedido_id, producto_id),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
    ON DELETE CASCADE,
  FOREIGN KEY (producto_id) REFERENCES productos(id)
    ON DELETE RESTRICT
);




