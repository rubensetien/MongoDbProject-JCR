const mongoose = require('mongoose');
const fs = require('fs');
const path = require('path');
const Country = require('./models/Country');
const Sport = require('./models/Sport');
const Venue = require('./models/Venue');
const Athlete = require('./models/Athlete');
const Team = require('./models/Team');
const Modality = require('./models/Modality');
const Result = require('./models/Result');  

// Ruta de los archivos JSON que contienen los datos
const dataFolderPath = path.resolve(__dirname, 'data');

// Conectar a MongoDB
mongoose.connect('mongodb://localhost:27017/jjoo_2024_api')
  .then(() => {
    console.log('Connected to MongoDB');
    // Eliminar la base de datos antes de importar los datos
    return mongoose.connection.dropDatabase();
  })
  .then(() => {
    console.log('Database dropped successfully');
    // Importar los datos
    return importData();
  })
  .catch((err) => {
    console.error('Error:', err);
    process.exit(1);
  });

// Función para importar los datos
const importData = async () => {
  try {
    // Leer y procesar el archivo JSON de países
    const countriesData = fs.readFileSync(path.join(dataFolderPath, 'countries.json'), 'utf-8');
    await Country.create(JSON.parse(countriesData));

    // Leer y procesar el archivo JSON de deportes
    const sportsData = fs.readFileSync(path.join(dataFolderPath, 'sports.json'), 'utf-8');
    await Sport.create(JSON.parse(sportsData));

    // Leer y procesar el archivo JSON de lugares
    const venuesData = fs.readFileSync(path.join(dataFolderPath, 'venues.json'), 'utf-8');
    await Venue.create(JSON.parse(venuesData));

    // Leer y procesar el archivo JSON de atletas
    const athletesData = fs.readFileSync(path.join(dataFolderPath, 'athletes.json'), 'utf-8');
    await Athlete.create(JSON.parse(athletesData));

    // Leer y procesar el archivo JSON de equipos
    const teamsData = fs.readFileSync(path.join(dataFolderPath, 'teams.json'), 'utf-8');
    await Team.create(JSON.parse(teamsData));

    // Leer y procesar el archivo JSON de modalidades
    const modalitiesData = fs.readFileSync(path.join(dataFolderPath, 'modalities.json'), 'utf-8');
    await Modality.create(JSON.parse(modalitiesData));

    // Leer y procesar el archivo JSON de resultados
    const resultsData = fs.readFileSync(path.join(dataFolderPath, 'results.json'), 'utf-8');
    await Result.create(JSON.parse(resultsData));

    console.log('Data imported successfully');
    process.exit();
  } catch (err) {
    console.error('Error importing data:', err);
    process.exit(1);
  }
};
