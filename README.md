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

### Explicación de la Estructura

- `/json/trailerflix.json`: Archivo JSON que contiene los datos de películas y series.
- `/app.js`: Archivo principal de la aplicación donde se configuran las rutas y la conexión con la base de datos.
- `/app.http`: Archivo en el que se encuentran las rutas para ser probadas.
- `src/conexion/database.js`: Archivo para establecer la conexión con MySQL.
- `src/models`: Contiene los modelos de datos para cada entidad (contenido, categorías, géneros, actores).
  - `contenido.js`: Modelo para gestionar los contenidos.
  - `categoria.js`: Modelo de las categorías de los contenidos.
  - `generos.js`: Modelo de los géneros.
  - `actor.js`: Modelo de los actores.
  - `contenidoGeneros.js`, `contenidoActores.js`: Relaciones entre contenido, géneros y actores.
  - `contenidoBusqueda.js`: Funciones para realizar búsquedas filtradas.
  - `relaciones.js`: Archivo para definir relaciones entre las tablas de la base de datos.
- `src/routes/contenidoRoutes.js`: Define las rutas del CRUD para los contenidos.
- `src/controllers/contenidoSchema.js`: Define el esquema de validación para los contenidos.
- `src/controllers/contenidoController.js`: Se encarga de la logica y el manejo de errores de los endpoint.

## Instalación y Uso

### Dependencias utilizadas:

- **express**: Framework web para Node.js que facilita la creación de aplicaciones web y APIs.
- **joi**: Biblioteca para la validación de datos, útil para validar los datos de entrada en las rutas.
- **morgan**: Middleware para registrar las solicitudes HTTP en la consola, útil para el desarrollo y la depuración.
- **mysql2**: Cliente MySQL para Node.js que permite interactuar con la base de datos MySQL.
- **sequelize**: ORM (Object-Relational Mapping) para Node.js que facilita la interacción con bases de datos relacionales.
- **standard**: Estándar de estilo para JavaScript que ayuda a mantener un código limpio y consistente.

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
   
   ```plaintext
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
2. La API estará disponible en `http://localhost:3000`.

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

## Autor 

<a href="https://github.com/joseargentina">
    <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="Logo de GitHub" width="25" height="25" style="border-radius: 50%;" />
</a>

[Github](https://github.com/joseargentina)


## Licencia

Este proyecto está bajo la licencia MIT.

  - [FabioDrizZt](https://github.com/FabioDrizZt)
   - [JuanNebbia](https://github.com/JuanNebbia)
   - [NKrein](https://github.com/NKrein)
   - [mathiasbarbosa](https://github.com/mathiasbarbosa)
