const mongoose = require('mongoose');

const resultSchema = new mongoose.Schema({
    id: {type: Number},
    modality: {type: String, index:true},
    athlete: {type: String, index:true},
    country: {type: String, index:true},
    medal: {type: String, index:true},
    time: {type: String, index:true},
    score: {type: Number, index:true},
    position: {type: Number, index:true},
    date_hour: {type: Date},
});

const Result = mongoose.model('Result', resultSchema);
module.exports = Result;
