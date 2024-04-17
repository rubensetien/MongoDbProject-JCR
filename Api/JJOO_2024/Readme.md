
# API utilizando Express y MongoDB
Esta es una API desarrollada utilizando Express.js como framework web y MongoDB como base de datos NoSQL. La API proporciona endpoints para realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre recursos específicos.

## Inicialización de la Base de Datos
El proyecto incluye un script llamado importData.js, el cual es responsable de inicializar la base de datos con datos iniciales antes de ejecutar la API. A continuación se explica cómo funciona este script:

-*Importación de módulos: El script comienza importando los módulos necesarios, incluyendo mongoose para la interacción con la base de datos y fs para la lectura de archivos.*

-*Conexión a MongoDB: Se establece una conexión a la base de datos MongoDB utilizando mongoose.connect(). La URL de conexión se especifica en el código.*

-*Eliminación de la base de datos: Antes de importar los datos, el script elimina la base de datos existente utilizando mongoose.connection.dropDatabase().*

-*Lectura y procesamiento de archivos JSON: A continuación, el script lee los archivos JSON ubicados en la carpeta data, los cuales contienen los datos iniciales de países, deportes, lugares, atletas, equipos, modalidades y resultados. Cada archivo se lee utilizando fs.readFileSync() y se convierte a objetos JavaScript utilizando JSON.parse().*

-*Creación de documentos en la base de datos: Una vez que los datos se han leído y procesado, el script utiliza los modelos de Mongoose correspondientes (por ejemplo, Country, Sport, Venue, etc.) para crear los documentos en la base de datos utilizando el método Model.create().*

-*Finalización del proceso: Finalmente, el script imprime un mensaje indicando que los datos se han importado correctamente y finaliza su ejecución.*

Este script es crucial para asegurar que la base de datos esté inicializada con datos válidos antes de ejecutar la API.
