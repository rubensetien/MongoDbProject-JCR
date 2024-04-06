const mongoose = require('mongoose');

const countrySchema = new mongoose.Schema({
  country: {type: String},
  acronym: {type: String},
  flag: {type: String},
  capital: {type: String},
  population: {type: String},
  representatives: {type: String}
});

const Country = mongoose.model('Country', countrySchema);

module.exports = Country;