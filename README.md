# Título Proyecto

## Miembros del grupo LX-XXX-X (sustituir)

1. López Aguilera, Manuel
1. Sánchez García, Antonio Manuel
1. Adardour,Ferdaouss
1. Zhou, You

## 1. Introducción al problema

- Descripción del problema para poner en contexto el proyecto, incluyendo información sobre los clientes y usuarios, la situación actual, problemas, expectativas, etc. Se valorará la presencia de información multimedia (fotos, gráficos, documentos escaneados, etc.).

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

## 4. Catálogo de requisitos

### 4.1. Requisitos funcionales

#### R.F.01. Título requisito funcional

Como [tipo de usuario]
quiero [servicio]
para [razón]

**Prueba de aceptación**
- Descripción de la primera comprobación a realizar
- Descripción de la segunda comprobación a realizar
- Se debe aplicar la regla de negocio R.N.XX.
- ...

#### 4.1.1. Requisitos de información

##### R.I.01. Título requisito de información

Como [tipo de usuario]
quiero [servicio]
para [razón]

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


