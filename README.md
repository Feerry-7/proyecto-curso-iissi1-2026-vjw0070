# PetGoo: Sistema de Información para la Gestión de una Tienda de Mascotas y Servicios Veterinarios

## Miembros del grupo L7-DF-4 

1. López Aguilera, Manuel
1. Sánchez García, Antonio Manuel
1. Adardour,Ferdaouss
1. Zhou, You

## 1. Introducción al problema

La tienda de animales PETGOO se dedica a la comercialización de productos de alimentación, accesorios y productos de higiene para mascotas, incluyendo además servicios de transporte y envío a domicilio.

Actualmente, la gestión del inventario, concertación e historial de citas, las ventas y los pedidos se realizan de forma parcial mediante herramientas no centralizadas y hojas de cálculo manuales. Esta situación provoca inconsistencias en el stock, errores administrativos, dificultades para consultar información actualizada y limita la posibilidad de comercializar los productos a través de plataformas digitales.

Con el objetivo de modernizar y expandir el negocio, la empresa ha decidido desarrollar una plataforma web de comercio electrónico y gestión centralizada. El nuevo sistema permitirá integrar en una única aplicación la gestión del catálogo de productos, clientes, empleados, veterinarios, pedidos, ventas, stock y envíos.

Gerencia : requieren centralizar la gestión del catálogo de productos y categorías, consultar el historial global de ventas, supervisar la actividad de los empleados.

Empleados: necesitan procesar  los pedidos realizados tanto de forma online, consultar y actualizar el inventario, mantener el stock disponible actualizado en tiempo real.

Veterinarios: buscan la gestión eficiente de consultas, asignación de diagnósticos y prescripciones necesarios para cada mascota atendida en consulta de manera personalizada.

Clientes: desean consultar el catálogo online, buscar y filtrar productos según diferentes criterios, añadir productos a un carrito de compra, realizar pedidos, seleccionar una dirección de entrega, consultar el estado de sus pedidos, y situación de mascotas y procedimientos necesarios.

El sistema deberá permitir que la información generada durante las distintas operaciones quede centralizada y sea accesible por los usuarios autorizados. De este modo, se pretende reducir la duplicidad de datos y los errores derivados de la gestión manual.

Asimismo, la plataforma permitirá ampliar el canal de ventas de la empresa mediante el comercio electrónico, ofreciendo a los clientes la posibilidad de realizar compras sin necesidad de acudir físicamente al establecimiento. Los empleados podrán gestionar dichos pedidos desde la misma plataforma utilizada para las operaciones realizadas en tienda.

Con la implantación del sistema se espera mejorar el control del inventario, agilizar la gestión de pedidos y ventas y ofrecer una mejor experiencia de compra a los clientes.


## 2. Glosario de términos
Concertación de citas: proceso mediante el cual se solicita, acuerda y registra una cita veterinaria para una mascota, asignándole una fecha, hora y veterinario correspondiente.

Estado de pedido: situación actual de un pedido durante su procesamiento, por ejemplo pendiente, preparado, enviado, entregado o cancelado.

Inventario:  conjunto de productos disponibles en la tienda y las cantidades existentes de cada uno de ellos.

Reposición: incorporación de nuevas unidades de un producto al inventario para recuperar su disponibilidad.

Stock: cantidad disponible de un determinado producto en un momento concreto.

Comercio electrónico: actividad de compra y venta de productos realizada a través de Internet.

Gestión centralizada: organización de la información y las operaciones de la tienda mediante un único sistema, evitando utilizar herramientas independientes.

Duplicidad de datos: situación en la que una misma información se encuentra almacenada varias veces, lo que puede provocar inconsistencias o errores.

## 3. Visión general del sistema
El sistema consiste en una plataforma web destinada a centralizar la gestión de una tienda de mascotas y a proporcionar un canal de venta online integrado con la actividad del establecimiento físico.

La aplicación permitirá trabajar con la información generada por las diferentes áreas del negocio desde un único sistema. De esta forma, los datos relacionados con productos, categorías, clientes, empleados, pedidos, ventas, inventario y envíos estarán conectados entre sí y podrán ser gestionados de acuerdo con los permisos de cada usuario.

El sistema se plantea como una solución única para dos ámbitos de actividad: la gestión interna de la tienda y la venta online. Las operaciones realizadas en el establecimiento y las realizadas mediante la plataforma web formarán parte del mismo sistema, permitiendo mantener una información común y actualizada

### 3.1. Requisitos generales

RG-1. Gestionar el inventario
Como empleado, 
quiero gestionar el inventario de productos, 
para conocer y mantener actualizada la disponibilidad de mercancía de la tienda.

RG-2. Gestionar las ventas y los pedidos
Como empleado, 
quiero gestionar las ventas y los pedidos de la tienda, 
para controlar las operaciones de compra realizadas tanto de forma presencial como online.

RG-3. Facilitar la venta online
Como cliente, 
quiero realizar compras a través de la plataforma web, 
para adquirir productos de la tienda sin necesidad de acudir físicamente al establecimiento.

RG-4. Gestionar los envíos
Como empleado, 
quiero gestionar los envíos asociados a los pedidos online, 
para controlar la entrega de los productos a los clientes.

RG-5. Supervisar la actividad del negocio 
Como Gerente, 
quiero consultar la información general de las operaciones de la tienda, gestionar el catálogo de productos de la tienda, 
para supervisar las ventas, los pedidos y el inventario y facilitar la gestión del negocio.

RG-6. Gestionar el acceso al sistema y datos de clientes l
Como Gerente, 
quiero gestionar los permisos de acceso de los usuarios,gestionar la información de los clientes,
para garantizar que cada usuario pueda acceder únicamente a las funciones que correspondan a su función dentro de la tienda ,disponer de los datos necesarios para administrar sus compras y pedidos.

RG-7. Gestionar servicios veterinarios
Como veterinario,
quiero gestionar la información de las mascotas y sus citas veterinarias,
para poder realizar y mantener actualizada la atención veterinaria ofrecida a los clientes.

### 3.2. Usuarios del sistema
Para garantizar la seguridad y el correcto flujo de trabajo, el sistema contempla diferentes perfiles de usuarios. Cada usuario tendrá permisos específicos adaptados a sus responsabilidades dentro del negocio:

Gerente
Es el usuario con control total sobre el sistema, cumpliendo con el rol de dueño de negocio.
-Capacidades: puede dar de alta y baja a otros usuarios de cualquier jerarquía, acceder a los informes de beneficios, ajustar precios del catálogo de forma masiva, realizar auditorías de inventario además de comunicarlo a proveedores, y modificar configuraciones críticas.

Dependiente (Empleado)
Aquel situado en el mostrador principal de recepción. Su principal labor es comercial y de atención al cliente.
-Capacidades:  posibilidad de registrar nuevos clientes y mascotas, administrar ventas, cobrar, y gestionar la agenda (pudiendo conceder/cancelar citas o concertándolas en línea o presencialmente). Por jerarquía, no es capaz ni de alterar ni leer partes confidenciales del historial clínico, pero si de modificar precios de forma localizada.

Veterinario
El profesional de salud animal cualificado para atender en consultas.
-Capacidades: gestionar su agenda de citas diarias (sincronizada con las de recepción), acceder al historial clínico completo de las mascotas, registrar nuevos diagnósticos, recetar medicamentos y registrar los servicios realizados para que el dependiente pueda cobrarlos. 

Cliente
Es el usuario final que va a consumir los servicios que proporciona nuestro negocio.
-Capacidades: a través de la página web podrá consultar las próximas citas de sus mascotas, ver su historial y calendario de vacunaciones (pudiendo comprobar las vacunas que son obligatorias por la legislación vigente de la comunidad autónoma en cada especie) , solicitar o cancelar citas online de forma sencilla. Encontrar productos recomendados según recomendaciones del veterinario o relacionados con especie y raza en particular, crear o cancelar pedidos y filtrar tanto en productos como en pedidos.
## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

####R.F.01. Gestionar productos del catálogo
Como Gerente, 
quiero dar de alta, modificar y dar de baja productos del catálogo, 
para mantener actualizada la oferta de productos de la tienda.
**Prueba de aceptación**
- 

####R.F.02. Gestionar categorías de productos
Como Gerente, 
quiero gestionar las categorías de los productos,
 para mantener organizado el catálogo de la tienda.
 **Prueba de aceptación**
- 
 
####R.F.03. Consultar el catálogo de productos
Como cliente, 
quiero consultar los productos disponibles en el catálogo, 
para conocer los artículos que puedo adquirir en la tienda.
**Prueba de aceptación**
- 

####R.F.04. Gestionar precios de productos
Como Gerente, 
quiero modificar los precios de los productos del catálogo, 
para mantener actualizados los precios de venta de la tienda.
**Prueba de aceptación**
- 

####R.F.05. Modificar precios de productos de forma localizada
Como dependiente, 
quiero modificar el precio de determinados productos, 
para actualizar los precios que necesiten cambios durante la actividad de la tienda. 
**Prueba de aceptación**
- 

####R.F.06. Consultar y actualizar el inventario
Como dependiente,
 quiero consultar y actualizar el stock de los productos, 
para mantener controlada la disponibilidad de mercancía de la tienda.
**Prueba de aceptación**
- 

####R.F.07. Realizar auditorías de inventario
Como Gerente,
quiero realizar auditorías del inventario, 
para comprobar que las existencias registradas coinciden con las existencias reales de la tienda.
**Prueba de aceptación**
- 

####R.F.08. Registrar clientes
Como dependiente, 
quiero registrar nuevos clientes, 
para disponer de su información y poder gestionar sus compras y servicios.
**Prueba de aceptación**
- 

####R.F.09. Gestionar datos de clientes
Como Gerente, 
quiero consultar y modificar la información de los clientes, 
para mantener sus datos actualizados.
**Prueba de aceptación**
- 




**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- Se debe aplicar la regla de negocio R.N.XX.
- ...

#### 4.1.1. Requisitos de información


**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- ...

#### 4.1.2. Reglas de negocio

##### R.N.01. Título regla negocio

Descripción de la regla de negocio.

### 4.2. Mapa de historias de usuario (opcional)

### 4.3. Requisitos no funcionales (opcional)

**R.N.F. 01. Título requisito no funcional**
Como [tipo de usuario]
quiero [servicio]
para [razón]

-- fin entregable 1 --

## 5. Modelo conceptual

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


