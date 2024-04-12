const mongoose = require('mongoose');

const teamSchema = new mongoose.Schema({
        id: {type: Number},
        country: {type: String, index:true},
        modality: {type: String, index: true},
        category: {type: String, index: true},
    });

const Team = mongoose.model('Team', teamSchema);
module.exports = Team;