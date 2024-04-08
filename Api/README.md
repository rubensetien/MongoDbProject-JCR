# JJOO_2024

Este es un proyecto para las Olimpiadas del 2024. Aquí encontrarás información sobre cómo iniciar la API y cómo manejar algunos errores comunes.

## Iniciar la API

Para iniciar la API, sigue estos pasos:

1. Asegúrate de tener Node.js instalado en tu sistema. Puedes descargarlo desde [nodejs.org](https://nodejs.org/).

2. Instala las dependencias del proyecto ejecutando el siguiente comando en tu terminal, en la raíz del proyecto:
   
   ```bash
   npm install

3. Para importar la base de datos a tu servicio **MongoDB** ejecuta el comando 
   ```bash
   node importData.js

Si dispones de la interfaz de **MongoDB Compass**, podras observar que se ha importado la base de datos con el nombre de **jjoo_2024_api**. Si eseas comprobar que se ha importado correctamente puedes tomar de referencia que debería haber 44 atletas

4. Una vez que se completen las instalaciones de las dependencias, puedes iniciar la API ejecutando el siguiente comando:
   ```bash
   nodemon start

Esto iniciará el servidor y podrás acceder a la API desde tu navegador o desde otras aplicaciones.
## Errores Comunes y Cómo Manejarlos
### 1. Error de "nodemon no se reconoce..."
Si encuentras el error "nodemon no se reconoce...", puede deberse a que **nodemon** no está instalado globalmente o no está disponible en tu entorno de ejecución. Para resolverlo, sigue estos pasos:

+ Asegúrate de tener **nodemon** instalado ejecutando **npm install -g nodemon**.
+ Si prefieres no instalarlo globalmente, ejecuta **node_modules/.bin/nodemon start** en lugar de **nodemon start**.
Con estos pasos, deberías poder iniciar la API y manejar algunos errores comunes que puedan surgir durante el proceso.