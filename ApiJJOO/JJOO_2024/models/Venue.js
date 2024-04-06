const mongoose = require('mongoose');

const venueSchema = new mongoose.Schema({
    name: {type: String},
    sport: {type: String},
    location: {type: String},
    capacity: {type: String },
    status: {type: String},
    picture: {type: String}
  });

const Venue = mongoose.model('Venue', venueSchema);

module.exports = Venue;
  