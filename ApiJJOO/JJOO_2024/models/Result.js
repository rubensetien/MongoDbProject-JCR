const mongoose = require('mongoose');

const resultSchema = new mongoose.Schema({
    id: {type: Number},
    modality: {type: String},
    athlete: {type: String},
    country: {type: String},
    medal: {type: String},
    time: {type: String},
    score: {type: Number},
    position: {type: Number},
    date_hour: {type: Date},
});

const Result = mongoose.model('Result', resultSchema);
module.exports = Result;
