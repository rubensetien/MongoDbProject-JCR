const mongoose = require('mongoose');

const sportSchema = new mongoose.Schema({
    name: {type: String},
    description: {type: String},
    picture: {type: String},
    history: {type: String},  
  });

const Sport = mongoose.model('Sport', sportSchema);

module.exports = Sport;