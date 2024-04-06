const { name } = require('ejs');
const mongoose = require('mongoose');

const modalitySchema = new mongoose.Schema({
    name : {type: String},
    category: {type: String},
    sport: {type: String},
    start_date: {type: Date},
    end_date: {type: Date},
    venue: {type: String},
    description: {type: String},
    result: {type: String},
    status: {type: String},
    transmission: {type: String},
    //picture: {type: String}
});

const Modality = mongoose.model('Modality', modalitySchema);
module.exports = Modality;