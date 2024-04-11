const { name } = require('ejs');
const mongoose = require('mongoose');

const modalitySchema = new mongoose.Schema({
    name : {type: String},
    category: {type: String},
    sport: {type: String, index:true},
    start_date: {type: Date, index:true},
    end_date: {type: Date, index:true},
    venue: {type: String, index:true},
    description: {type: String},
    result: {type: String},
    status: {type: String},
    transmission: {type: String, index:true},
    //picture: {type: String}
});

const Modality = mongoose.model('Modality', modalitySchema);
module.exports = Modality;