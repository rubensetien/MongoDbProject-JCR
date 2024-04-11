const mongoose = require('mongoose');

const athleteSchema = new mongoose.Schema({
    name: { type: String },
    country: { type: String, index: true }, // Agregando un índice al campo 'country'
    team: { type: String },
    age: { type: Number },
    gender: { type: String },
    modality: { type: String },
    medals: { type: Number },
    record: { type: String },
    picture: { type: String }
});

const Athlete = mongoose.model('Athlete', athleteSchema);
module.exports = Athlete;
