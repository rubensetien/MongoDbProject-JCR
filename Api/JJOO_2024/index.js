const express = require('express');
const routes = require('./router');
const path = require('path');
const mongoose = require('mongoose');

const app = express();

// Configuración para habilitar HTML
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');

//Carpeta de vistas
app.set('views', path.join(__dirname, './views'));

//Conexión con MongoDB
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost:27017/jjoo_2024_api')
  .then(() => {})
  .catch(() => {});

//Definir rutas de la aplicación   
app.use('/', routes());

app.listen(3000);