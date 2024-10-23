#  Proyecto Integrador: CRUD con Node.js y MySQL 
# TrailerFlix

## Descripción

TrailerFlix es una API CRUD para gestionar un catálogo de películas y series en una base de datos MySQL. Este proyecto se basa en un archivo JSON (`trailerflix.json`) y permite realizar operaciones como obtener, filtrar, agregar, actualizar y eliminar contenidos.

## Diseño de la Base de Datos

El diseño de la base de datos fue realizado en [dbdiagram.io](https://dbdiagram.io/home). Una vez completado, se exportaron los scripts en formato `.sql` para ejecutarlos en MySQL Workbench.

- [Ver el diseño realizado en DB Diagram](./diseñoDB-TrailerFlix.pdf)
- [Ver los scripts de creación de la base de datos SQL](./Proyecto-final-Backend-TrailerFlix.sql)
- [Ver los scripts de inserción de datos SQL](./Ingresar-datos-TrailerFlix-Backend.sql)

Después, se creó la base de datos utilizando este diseño, y mediante una IA, se generaron los scripts necesarios para insertar los datos desde el archivo JSON proporcionado.

### Creación de la Base de Datos

Se crearon un total de **seis tablas** para estructurar la base de datos de TrailerFlix, las cuales son:

1. **categorias**: Almacena las categorías de los contenidos (Serie o Pelicula).
2. **generos**: Contiene los géneros disponibles para clasificar los contenidos.
3. **contenidos**: Registra los detalles de las películas y series, vinculándose con categorías y géneros.
4. **actores**: Almacena información sobre los actores que participan en los contenidos.
5. **contenido_actores**: Tabla intermedia que establece la relación entre los contenidos y los actores, permitiendo múltiples actores por contenido.
6. **contenido_generos**: Tabla intermedia que define la relación entre los contenidos y los géneros, permitiendo múltiples géneros por contenido.

#### Relaciones
- **Relaciones Clave Foránea**:
  - `contenidos.id_categoria` se relaciona con `categorias.id`, estableciendo que cada contenido pertenece a una categoría.
  - `contenido_actores.id_contenido` se relaciona con `contenidos.id` y `contenido_actores.id_actor` con `actores.id`, permitiendo asociar actores a los contenidos.
  - `contenido_generos.id_contenido` se relaciona con `contenidos.id` y `contenido_generos.id_genero` con `generos.id`, permitiendo asignar múltiples géneros a cada contenido.

- **Relaciones Definidas**:
  - **Categorías a Contenidos**: 
    - `Categorias.hasMany(Contenido, { foreignKey: 'id_categoria', sourceKey: 'id' })`
    - `Contenido.belongsTo(Categorias, { foreignKey: 'id_categoria', targetKey: 'id' })`
  - **Contenido a Actores (Many-to-Many)**:
    - `Contenido.belongsToMany(Actor, { through: ContenidoActores, foreignKey: 'id_contenido' })`
    - `Actor.belongsToMany(Contenido, { through: ContenidoActores, foreignKey: 'id_actor' })`
  - **Contenido a Géneros (Many-to-Many)**:
    - `Contenido.belongsToMany(Genero, { through: ContenidoGeneros, foreignKey: 'id_contenido' })`
    - `Genero.belongsToMany(Contenido, { through: ContenidoGeneros, foreignKey: 'id_genero' })`
  - **ContenidoActores con Contenido y Actor**:
    - `ContenidoActores.belongsTo(Contenido, { foreignKey: 'id_contenido' })`
    - `ContenidoActores.belongsTo(Actor, { foreignKey: 'id_actor' })`
  - **ContenidoGeneros con Contenido y Género**:
    - `ContenidoGeneros.belongsTo(Contenido, { foreignKey: 'id_contenido' })`
    - `ContenidoGeneros.belongsTo(Genero, { foreignKey: 'id_genero' })`
     
#### Índices
Agregue índices en las columnas más utilizadas para búsquedas y filtrados, mejorando el rendimiento de las consultas.

#### Vista `contenido_busqueda`
**Creación de la Vista `contenido_busqueda`:**
   - La vista `contenido_busqueda` se crea para facilitar las consultas sobre los contenidos, incluyendo sus géneros y actores.
   - Esta vista permite a los usuarios acceder rápidamente a información relevante sin tener que ejecutar múltiples consultas o unirse a varias tablas repetidamente.

## Estructura del Proyecto

```plaintext
/json
  - trailerflix.json
/README.md
/app.js
/conexion/
  - database.js
/src/
  /models/
    - contenido.js
    - categoria.js
    - generos.js
    - actor.js
    - contenidoGeneros.js
    - contenidoActores.js
    - contenidoBusqueda.js
    - relaciones.js
  /routes/
    - contenidoRoutes.js
    - contenidoSchema.js
```

# Estructura del Proyecto

## Explicación de la Estructura

- `/json/trailerflix.json`: Archivo JSON que contiene los datos de películas y series.
- `/app.js`: Archivo principal de la aplicación donde se configuran las rutas, la conexión con la base de datos y la documentación con Swagger.
- `/app.http`: Archivo en el que se encuentran las rutas para ser probadas.
- `src/conexion/database.js`: Archivo para establecer la conexión con MySQL.
  
### `src/models`: 
Contiene los modelos de datos para cada entidad (contenido, categorías, géneros, actores).

  - `contenido.js`: Modelo para gestionar los contenidos.
  - `categoria.js`: Modelo de las categorías de los contenidos.
  - `generos.js`: Modelo de los géneros.
  - `actor.js`: Modelo de los actores.
  - `contenidoGeneros.js`: Modelo para las relaciones entre contenido y géneros.
  - `contenidoActores.js`: Modelo para las relaciones entre contenido y actores.
  - `contenidoBusqueda.js`: Funciones para realizar búsquedas filtradas.
  - `relaciones.js`: Archivo para definir relaciones entre las tablas de la base de datos.

### `src/routes/contenidoRoutes.js`: 
Define las rutas del CRUD para los contenidos y las respuestas esperadas con Swagger.

### `src/controllers`: 
  - `contenidoController.js`: Maneja la lógica del CRUD y la gestión de errores en los endpoints.
  - `validacionDeDatos.js`: Define el esquema de validación para los datos esperados usando Joi.
  - `schemas/ContenidoSchemas.js`: Define los esquemas de datos para Swagger.

### `src/utils/swagger.config.js`: 
Configuración de Swagger para documentar la API.

- **`src/utils/swagger.config.js`**: Contiene la configuración y opciones de Swagger, como el título, descripción, versión de la API, y el archivo que describe los endpoints y las respuestas.
- **`src/controllers/schemas/ContenidoSchemas.js`**: Define los esquemas de datos usados en Swagger para la documentación.
- **`src/routes/contenidoRoutes.js`**: Aquí se han definido las respuestas esperadas por los endpoints y se integran los detalles de Swagger.


## Documentación con Swagger

Este proyecto utiliza **Swagger** para documentar y probar de manera interactiva las rutas de la API.

Las rutas y esquemas de Swagger están definidos en el proyecto en las siguientes ubicaciones:
- Configuración de Swagger: `src/utils/swagger.config.js`
- Schemas de contenido: `src/controllers/schemas/ContenidoSchemas.js`
- Definición de respuestas esperadas en las rutas: `src/routes/contenidoRoutes.js`

### Visualización de la Documentación

Una vez que el servidor esté corriendo, puedes acceder a la documentación Swagger en la siguiente URL:http://localhost:3000/api/v1

## Instalación y Uso del proyecto

### Dependencias utilizadas:

- **express**: Framework web para Node.js que facilita la creación de aplicaciones web y APIs.
- **joi**: Biblioteca para la validación de datos, útil para validar los datos de entrada en las rutas.
- **morgan**: Middleware para registrar las solicitudes HTTP en la consola, útil para el desarrollo y la depuración.
- **mysql2**: Cliente MySQL para Node.js que permite interactuar con la base de datos MySQL.
- **sequelize**: ORM (Object-Relational Mapping) para Node.js que facilita la interacción con bases de datos relacionales.
- **standard**: Estándar de estilo para JavaScript que ayuda a mantener un código limpio y consistente.
- **swagger-jsdoc**: Para generar la especificación OpenAPI en base a JSDoc.
- **swagger-ui-express**: Para servir la interfaz gráfica de Swagger.

### Requisitos
- **Node.js**
- **MySQL**

### Instalación
1. Clona este repositorio.
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   ```
2. Instala las dependencias.
   ```bash
   npm install
   ```
3. Configura la conexión con MySQL en el archivo `/conexion/database.js`.
4. Para no exponer datos sensibles, uso un archivo .env para proteger los datos, tendrías que reemplazar los datos por los tuyos, se vera asi:
   
   ```env
      HOST=localhost
      USER=user
      PASSWORD=pasword
      DATA_BASE=trailerflix
      PORT=3000 
   ```
5. Inicia el servidor.
   ```bash
   npm start
   ```
2. La API estará disponible en `http://localhost:3000/api/v1`.

## Endpoints

- `GET /api/contenidos`: Obtiene todos los contenidos.
- `GET /api/contenidos/:id`: Obtiene un contenido por su ID.
- `POST /api/contenidos`: Agrega un nuevo contenido.
- `PUT /api/contenidos/:id`: Actualiza un contenido existente.
- `DELETE /api/contenidos/:id`: Elimina un contenido.

## Tecnologías Utilizadas

- **Node.js**: Entorno de ejecución para JavaScript en el servidor.
- **Express**: Framework web para construir la API.
- **MySQL**: Sistema de gestión de bases de datos.
- **Sequelize**: ORM para interactuar con la base de datos MySQL.
- **DB Diagram**: Utilizado para modelar las relaciones entre las tablas.

## Author: José Barone

<a href="https://github.com/joseargentina">
    <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="Logo de GitHub" width="25" height="25" style="border-radius: 50%;" />
</a>

[Github](https://github.com/joseargentina)


## Licencia

Este proyecto está bajo la licencia MIT.