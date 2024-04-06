const mongoose = require('mongoose');

const teamSchema = new mongoose.Schema({
        id: {type: Number},
        country: {type: String},
        modality: {type: String},
        category: {type: String},
    });

const Team = mongoose.model('Team', teamSchema);
module.exports = Team;