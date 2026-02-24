# Descripcion
Coches-Web es una pagina web de una compraventa de coches hecha con Docker, Laravel, React, Inertia y MySql.

  - Gestion CRUD (creacion, lectura, actulizacion y eliminacion) de usuarios y vehiculos.

  - Sistema robusto de inicio de sesion y registro.

  - Los usuarios pueden comprar y vender coches de forma facil, rapida y segura.

  - Bonita presentacion con efectos y animaciones.

  - Al funcionar con Docker se puede ejecutar rapidamente y en varias plataformas (Windows, Linux, Mac).

Mas informacion en la documentacion de pdf.

# Como ejecutarla

1. Descargar e instalar docker desktop https://www.docker.com/

2. Descargar el repositorio con git clone o en zip

3. Con la terminal situarse dentro del repositorio y escribir "docker compose up"

4. Escribir en el navegador la url http://localhost:8000

5. Para pararla hacer ctrl-c en la terminal y escribir "docker compose down" para borrar los contenedores o "docker compose down -v --rmi all --remove-orphans" para borrar todo el proyecto.
