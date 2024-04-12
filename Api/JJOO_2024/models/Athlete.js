const mongoose = require('mongoose');

const athleteSchema = new mongoose.Schema({

    name: {type: String},
    country: {type: String, index:true},
    team: {type: String},
    age: {type: Number, index:true},
    gender : {type: String, index:true},
    modality: {type: String, index: true},
    medals: {type: Number},
    record: {type: String, index:true},
    picture: {type: String}

});
const Athlete = mongoose.model('Athlete', athleteSchema);
module.exports = Athlete;