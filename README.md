# PetGoo: Sistema de Información para la Gestión de una Tienda de Mascotas

## Miembros del grupo L7-DF-4 

1. López Aguilera, Manuel
1. Sánchez García, Antonio Manuel
1. Adardour,Ferdaouss
1. Zhou, You

## 1. Introducción al problema

La tienda de animales PETGOO se dedica a la comercialización de productos de alimentación, accesorios y productos de higiene para mascotas.

Actualmente, la gestión del inventario, las ventas y los pedidos se realizan de forma parcial mediante herramientas no centralizadas y hojas de cálculo manuales. Esta situación provoca inconsistencias en el stock, errores administrativos, dificultades para consultar información actualizada y limita la posibilidad de comercializar los productos a través de plataformas digitales.

Con el objetivo de modernizar y expandir el negocio, la empresa ha decidido desarrollar una plataforma web de comercio electrónico y gestión centralizada. El nuevo sistema permitirá integrar en una única aplicación la gestión del catálogo de productos, clientes, empleados, pedidos, ventas, stock y envíos.

El sistema deberá permitir que la información generada durante las distintas operaciones quede centralizada y sea accesible por los usuarios autorizados. De este modo, se pretende reducir la duplicidad de datos y los errores derivados de la gestión manual.

Asimismo, la plataforma permitirá ampliar el canal de ventas de la empresa mediante el comercio electrónico, ofreciendo a los clientes la posibilidad de realizar compras sin necesidad de acudir físicamente al establecimiento. Los empleados podrán gestionar dichos pedidos desde la misma plataforma utilizada para las operaciones realizadas en tienda.

Con la implantación del sistema se espera mejorar el control del inventario, agilizar la gestión de pedidos y ventas y ofrecer una mejor experiencia de compra a los clientes.

## 2. Glosario de términos
No hay ningún término de difícil entendimiento.

## 3. Visión general del sistema
El sistema consiste en una plataforma web destinada a centralizar la gestión de una tienda de mascotas y a proporcionar un canal de venta online integrado con la actividad del establecimiento físico.

La aplicación permitirá trabajar con la información generada por las diferentes áreas del negocio desde un único sistema. De esta forma, los datos relacionados con productos, categorías, clientes, empleados, pedidos, ventas, inventario y envíos estarán conectados entre sí y podrán ser gestionados de acuerdo con los permisos de cada usuario.

El sistema se plantea como una solución única para dos ámbitos de actividad: la gestión interna de la tienda y la venta online. Las operaciones realizadas en el establecimiento y las realizadas mediante la plataforma web formarán parte del mismo sistema, permitiendo mantener una información común y actualizada

### 3.1. Requisitos generales

RG-1. Gestionar el inventario

Como empleado, 

quiero gestionar el inventario de productos, 

para conocer y mantener actualizada la disponibilidad de mercancía de la tienda.

RG-2. Gestionar los pedidos

Como empleado, 

quiero gestionar los pedidos de la tienda, 

para controlar las operaciones de compra realizadas tanto de forma  online.



RG-3.Gestión del Carrito de Compras

Como cliente, 

quiero añadir productos al carrito de compra,

para revisar el importe total y la cantidad antes de confirmar el pedid

RG-4 Procesamiento de Pagos y Selección de Método

Como cliente,

quiero realizar el pago de mi pedido mediante distintos métodos disponibles,

para completar la compra de forma cómoda y segura.

RG-5: Seguimiento e Historial de Pedidos

Como cliente,

quiero consultar el historial de mis pedidos y su estado (pendiente, enviado, entregado), 

para hacer un seguimiento de mis compras.





### 3.2. Usuarios del sistema
Para garantizar la seguridad y el correcto flujo de trabajo, el sistema contempla diferentes perfiles de usuarios. Cada usuario tendrá permisos específicos adaptados a sus responsabilidades dentro del negocio:

Empleado
Es el usuario con control total sobre el sistema.

Cliente
Es el usuario final que va a consumir los servicios que proporciona nuestro negocio.

## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

#### R.F.01. Gestionar productos del catálogo
Como empleado, 
quiero dar de alta, modificar y dar de baja productos del catálogo, 
para mantener actualizada la oferta de productos de la tienda.

#### **Prueba de aceptación**
- Se debe comprobar que el gerente pueda dar de alta un producto con sus datos obligatorios.
- Se debe comprobar que el gerente pueda modificar los datos de un producto existente.
- Se debe comprobar que el gerente pueda dar de baja un producto del catálogo.
- Se debe aplicar la regla de negocio RN-003 para comprobar que no se permita registrar un producto con un precio igual o inferior a 0,00 €.

#### R.F.02. Gestionar categorías de productos
Como empleado, 
quiero gestionar las categorías de los productos,
para mantener organizado el catálogo de la tienda.
 
####  **Prueba de aceptación**
- Se debe comprobar que el gerente pueda crear una nueva categoría.
- Se debe comprobar que el gerente pueda modificar una categoría existente.
- Se debe comprobar que el gerente pueda asociar productos a las categorías correspondientes.
- Se debe comprobar que los cambios realizados en las categorías queden guardados correctamente.
 
#### R.F.03. Consultar el catálogo de productos
Como cliente, 
quiero consultar los productos disponibles en el catálogo, 
para conocer los artículos que puedo adquirir en la tienda.

#### **Prueba de aceptación**
- Se debe comprobar que el cliente pueda consultar los productos disponibles en el catálogo.
- Se debe comprobar que cada producto muestre su información relevante, incluido el nombre y el precio.
- Se debe comprobar que los productos aparezcan organizados por categorías.
- Se debe comprobar que los precios mostrados coincidan con los registrados en el sistema.




#### R.F.05. Modificar precios de productos de forma localizada
Como empleado, 
quiero modificar el precio de determinados productos, 
para actualizar los precios que necesiten cambios durante la actividad de la tienda. 

#### **Prueba de aceptación**
- Se debe comprobar que el dependiente pueda modificar el precio de un producto dentro de sus permisos.
- Se debe comprobar que el nuevo precio quede guardado correctamente.
- Se debe comprobar que el dependiente no pueda modificar precios de productos para los que no tenga autorización.


#### R.F.06. Consultar y actualizar el inventario
Como empleado,
quiero consultar y actualizar el stock de los productos, 
para mantener controlada la disponibilidad de mercancía de la tienda.

#### **Prueba de aceptación**
- Se debe comprobar que el dependiente pueda consultar el stock disponible de un producto.
- Se debe comprobar que pueda actualizar las existencias según sus permisos.
- Se debe comprobar que el sistema refleje correctamente las cantidades actualizadas.


#### R.F.07. Realizar auditorías de inventario
Como empleado,
quiero realizar auditorías del inventario, 
para comprobar que las existencias registradas coinciden con las existencias reales de la tienda.

#### **Prueba de aceptación**
- Se debe comprobar que el gerente pueda consultar las existencias registradas.
- Se debe comprobar que pueda registrar los resultados de un recuento físico.
- Se debe comprobar que se puedan identificar las diferencias entre el stock real y el registrado.




#### R.F.10. Registro y autenticación de usuarios
Como cliente, 
quiero crear una cuenta en la plataforma e iniciar sesión,
para gestionar mis datos personales, direcciones y realizar pedidos online.

#### **Prueba de aceptación**
- Se debe comprobar que un cliente pueda crear una cuenta proporcionando los datos obligatorios.
- Se debe comprobar que un usuario registrado pueda iniciar sesión con sus credenciales correctas.
- Se debe comprobar que el sistema rechace el inicio de sesión cuando las credenciales sean incorrectas.
- Se debe aplicar la regla de negocio RN-006 para impedir que dos usuarios tengan el mismo correo electrónico.


#### RF-11. Gestionar direcciones de entrega
Como Cliente, 
quiero añadir, modificar y seleccionar direcciones de entrega, 
para agilizar la confirmación de pedidos online.

#### **Prueba de aceptación**
- Se debe comprobar que el cliente pueda añadir una nueva dirección de entrega.
- Se debe comprobar que pueda modificar una dirección previamente registrada.
- Se debe comprobar que pueda seleccionar una de sus direcciones al tramitar un pedido.
- Se debe comprobar que un cliente no pueda modificar ni consultar las direcciones privadas de otro cliente.


#### R.F.12. Tramitación de pedidos online (Carrito de compra)
Como cliente, 
quiero añadir productos al carrito, seleccionar dirección de envío y método de pago para realizar el pedido, 
para comprar los productos desde la plataforma web.

#### **Prueba de aceptación**
- Se debe comprobar que el cliente pueda añadir productos al carrito y modificar las cantidades.
- Se debe comprobar que el sistema calcule correctamente el importe de los productos seleccionados.
- Se debe comprobar que el sistema aplique los gastos de envío correspondientes: 0,00 € si el importe de los productos supera los 70,00 €, y 4,95 € en caso contrario.
- Se debe aplicar la regla de negocio RN-002 para impedir que se tramite un pedido cuyo importe no sea superior a 20,00 €.
- Se debe aplicar la regla de negocio RN-003 para garantizar que los productos tengan precios positivos.
- Se debe aplicar la regla de negocio RN-001 para impedir que el stock resulte negativo al tramitar el pedido.




#### R.F.15. Consultar pedidos y ventas del cliente
Como cliente, 
quiero consultar mis pedidos y compras realizadas, 
para conocer el estado y el historial de mis operaciones con la tienda.

#### **Prueba de aceptación**
- Se debe comprobar que el cliente pueda consultar sus pedidos online.
- Se debe comprobar que pueda consultar el estado de cada pedido.
- Se debe comprobar que pueda consultar el historial de sus compras.
- Se debe comprobar que no pueda acceder a los pedidos o compras de otros clientes.




#### R.F.16. Gestionar pedidos online
Como empleado, 
quiero gestionar los pedidos realizados mediante la plataforma web, 
para preparar y controlar las compras realizadas por los clientes.

#### **Prueba de aceptación**
- Se debe comprobar que el dependiente pueda consultar los pedidos online registrados.
- Se debe comprobar que pueda consultar los productos y las cantidades de cada pedido.
- Se debe comprobar que pueda actualizar el estado del pedido durante su preparación.
- Se debe aplicar la regla de negocio RN-001 para garantizar que la gestión de los pedidos no provoque que el stock sea negativo.

#### R.F.20. Gestionar envíos
Como empleado, 
quiero gestionar los envíos asociados a los pedidos online, 
para controlar la entrega de los productos a los clientes.

#### **Prueba de aceptación**
- Se debe comprobar que el dependiente pueda consultar los envíos asociados a los pedidos online.
- Se debe comprobar que pueda registrar o modificar los datos del envío.
- Se debe comprobar que pueda actualizar el estado del envío.
- Se debe comprobar que cada envío quede asociado al pedido correspondiente.


#### R.F.21. Cancelar pedidos online
Como cliente, 
quiero cancelar mis pedidos online cuando sea posible, 
para poder anular una compra que ya no deseo realizar.

#### **Prueba de aceptación**
- Se debe comprobar que el cliente pueda consultar sus pedidos para seleccionar el que desea cancelar.
- Se debe comprobar que pueda cancelar un pedido cuando cumpla las condiciones establecidas.
- Se debe comprobar que el sistema actualice el estado del pedido tras aceptar la cancelación.
- Se debe comprobar que el sistema impida cancelar un pedido cuando ya no sea posible hacerlo según las condiciones del negocio.











### 4.1.1. Requisitos de información
#### RI-001: Información de usuarios (Clientes y Empleados)
Como Gerente del sistema,
quiero almacenar la información identificativa de los usuarios: 
              ID de Usuario (único), Nombre, Apellidos, Correo electrónico (único), Teléfono, Nombre              de usuario, Contraseña, Foto de perfil y Rol (Cliente y Empleado).
              En el caso de los Clientes: Direcciones de entrega guardadas. 
              En el caso de los Empleados: DNI (único) y Fecha de contratación.  
para autenticar a los usuarios y gestionar las operaciones comerciales de forma personalizada. 






#### RI-003: Información de productos y categorías
Como empleado,
quiero almacenar la información de los productos y sus categorías: 
Producto: ID de Producto (único), Nombre, Descripción, Precio (€), Stock (unidades) y Foto.
Categoría: ID de Categoría (único), Nombre y Descripción. 
Cada producto estará asociado a una categoría ,
para organizar el catálogo de productos y mantener actualizada la información del inventario.







#### RI-005: Información de pedidos
Como empleado,
quiero almacenar la información correspondiente a los pedidos y las compras realizadas en PetGoo, incluyendo:
Pedido: ID de pedido (único), fecha y hora de creación, cliente asociado, empleado responsable (cuando se trate de una venta presencial), estado del pedido (Pendiente, En preparación, Enviado, Entregado o Cancelado), forma de pago (Tarjeta o Efectivo),  dirección de envío (cuando corresponda) e importe total (€).
Líneas de pedido: producto asociado, cantidad adquirida, precio unitario aplicado en el momento de la compra y subtotal de la línea.
Cada pedido estará asociado a un cliente y contendrá las líneas correspondientes a los productos adquiridos. En las compras presenciales se registrará el empleado responsable, mientras que en los pedidos online se almacenará la dirección de envío cuando sea necesaria.
para emitir justificantes de compra, mantener un registro de las operaciones comerciales y facilitar el seguimiento de los pedidos y las ventas.



#### RI-006: Información de direcciones de entrega
Como cliente,
quiero registrar mis direcciones de entrega: 
ID de Dirección (único), Calle, Número, Piso/Puerta, Código Postal, Localidad, Provincia y Campo indicador de dirección seleccionada por defecto.
Para agilizar el proceso de compra online.






#### 4.1.2. Reglas de negocio

##### RN-001: Cantidad máxima y mínima pedido.
El número de unidades mínimo en un pedido nunca podrá ser menor que cero y nunca mayor que 100 unidades.

##### RN-002: Comprobación dirección. 
La dirección del pedido debe pertenecer al cliente del pedido. 

##### RN-003: Máxima categoría por pedido.
No se puede comprar de dos categorías diferentes en un mismo pedido.

##### RN-004: Máximo gasto mensual.
No se puede comprar más de 100€ al mes.

##### RN-005: Máximo direcciones por ciudad. 
No se puede poner más de 3 direcciones en la misma ciudad.  

##### RN-006: Actualización del stock.
Al pasar a "pagado" se descuenta el stock automáticamente.



### 4.2. Mapa de historias de usuario

El mapa de historias de usuario de PetGoo permite organizar las funcionalidades del sistema según las actividades principales que realizan los distintos tipos de usuarios. Se estructura en actividades generales y tareas más específicas, facilitando la comprensión del alcance del sistema y la relación entre las necesidades de los usuarios y los requisitos funcionales definidos.

| Actividad principal | Historias de usuario |
|---|---|
| **Gestionar usuarios y clientes** | Registrar usuarios, iniciar sesión, gestionar permisos y mantener actualizados los datos de los clientes. |
| **Gestionar catálogo e inventario** | Gestionar productos y categorías, consultar el catálogo, actualizar precios, consultar existencias y realizar auditorías de inventario. |
| **Gestionar compras y pedidos** | Añadir productos al carrito, tramitar pedidos online, consultar compras, cancelar pedidos y gestionar pedidos recibidos. |
| **Gestionar ventas** | Registrar las operaciones presenciales, consultar el historial de ventas y supervisar la actividad comercial. |
| **Gestionar entregas** | Guardar direcciones de entrega y gestionar los envíos asociados a pedidos online. |
| **Gestionar servicios veterinarios** | Registrar mascotas, solicitar y gestionar citas, consultar agendas y registrar consultas veterinarias. |
| **Supervisar el negocio** | Consultar información de ventas, controlar el inventario y gestionar proveedores y reposiciones. |

### 4.3. Requisitos no funcionales 

**R.N.F. 01. Usabilidad**
Como usuario del sistema, 
quiero que la plataforma sea sencilla e intuitiva de utilizar, 
para poder realizar las operaciones correspondientes a mi función sin dificultades.

**R.N.F. 02. Rendimiento**
Como usuario del sistema, 
quiero que la búsqueda de catálogo y la confirmación de pedidos respondan en menos de 2 segundos, 
para asegurar una experiencia fluida y sin interrupciones.

**R.N.F. 03. Disponibilidad**
Como cliente, 
quiero que la plataforma esté disponible durante la mayor parte del tiempo, 
para poder consultar el catálogo y realizar compras cuando lo necesite.

**R.N.F. 04. Seguridad**
Como usuario del sistema, 
quiero que el acceso a la plataforma esté protegido mediante autenticación, 
para evitar que personas no autorizadas puedan acceder a la información del sistema.

**R.N.F. 05. Control de acceso**
Como empleado, 
quiero que cada usuario tenga acceso únicamente a las funciones que correspondan a su rol, 
para proteger la información y evitar operaciones no autorizadas.

**R.N.F. 06. Fiabilidad**
Como empleado, 
quiero que la información registrada en el sistema se mantenga íntegra y consistente, 
para poder confiar en los datos de productos, inventario, ventas y pedidos.

**R.N.F.07. Compatibilidad**
Como usuario, 
quiero poder utilizar la plataforma desde los principales navegadores web y diferentes dispositivos, 
para poder acceder al sistema independientemente del dispositivo utilizado.

**R.N.F. 08. Mantenibilidad**
Como empleado, 
quiero que la aplicación esté organizada de forma que facilite su mantenimiento y actualización, 
para poder corregir errores o incorporar mejoras sin afectar innecesariamente al resto del sistema.


-- fin entregable 1 --

## 5. Modelo conceptual
![Modelo conceptual PetGoo](modelo-conceptual.png)
### 5.1. Diagramas de clases UML

- con restricciones.

### 5.2. Escenarios de prueba

- con descripción textual y diagrama de objetos UML.

## 6. Matrices de trazabilidad

- Matriz de trazabilidad entre los elementos del modelo conceptual y los requisitos.

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:------|:-----------|:-----------|:-----------|:-----------|
| RI-1  | X          | X          | X          | X          |
| RI-2  |            | X          |            | X          |
| RF-1  |            | X          |            | X          |
| RF-2  | X          |            | X          | X          |
| RN-1  |            | X          |            |            |
| RN-2  | X          | X          | X          |            |
| ...   |            |            |            |            |

-- fin entregable 2 --

## 7. Modelo relacional en 3FN

- Relaciones obtenidas al aplicar la transformación del modelo conceptual.

### 7.1.  Justificación de la estrategia de transformación de jerarquías

- si se identificaron jerarquías en el MC.


### 8. Matriz de trazabilidad MC/SQL (opcional):

- Restricciones sobre el MC / Elementos del modelo tecnológico (SQL) (Triggers, checks, etc.)
- Incluir Reglas de negocio — Constraints/Triggers en las matrices de trazabilidad para el entregable 3

|       | EntidadX   | AsociaciónX  | RestricciónX  | Entidad2 ...   | 
|:-------|:-------|:-------|:-------|:-------|
| TABLA-1 |        |        |        |        |
| TABLA-2 |        |        |        |        |
| TABLA-3 |        |        |        |        |
| TABLA-4 |        |        |        |        |
| TRIG-1 |        |        |        |        |
| TRIG-2 | X      | X      |        | X      |
| TRIG-3 |        | X      |        | X      |
| TRIG-4 |        |        | X      |        |
| CONST-1 |        |        |        |        |
| CONST-2 | X      | X      |        | X      |
| CONST-3 |        | X      |        | X      |
| CONST-4 |        |        | X      |        |

Se consideran todo tipo de constraints declarativas (aquellas definidas durante el CREATE TABLE).
-- fin entregable 3 --

## Referencias


