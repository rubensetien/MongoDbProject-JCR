const mongoose = require('mongoose');

const venueSchema = new mongoose.Schema({
    name: {type: String},
    sport: {type: String, index:true},
    location: {type: String, index:true},
    capacity: {type: String },
    status: {type: String, index:true},
    picture: {type: String}
  });

const Venue = mongoose.model('Venue', venueSchema);

module.exports = Venue;
  