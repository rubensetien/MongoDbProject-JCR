const mongoose = require('mongoose');

const athleteSchema = new mongoose.Schema({

    name: {type: String},
    country: {type: String},
    team: {type: String},
    age: {type: Number},
    gender : {type: String},
    modality: {type: String},
    medals: {type: Number},
    record: {type: String},
    picture: {type: String}

});
const Athlete = mongoose.model('Athlete', athleteSchema);
module.exports = Athlete;