const mongoose = require('mongoose');

const countrySchema = new mongoose.Schema({
  name: String,
  population: Number,
  // Otros campos de tu esquema
});

const Country = mongoose.model('Country', countrySchema);

module.exports = Country;
