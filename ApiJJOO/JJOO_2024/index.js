const express = require('express');
const routes = require('./router');
const path = require('path');
const app = express();

//Habilitar Pug
app.set('view engine', 'pug');

//Carpeta de vistas
app.set('views', path.join(__dirname, './views'));

//Definir rutas de la aplicación   
app.use('/', routes());

app.listen(3000);