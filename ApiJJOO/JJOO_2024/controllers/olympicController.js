const Country = require('../models/Country');
const Sport = require('../models/Sport');
const Venue = require('../models/Venue');


exports.home = (req, res) => {
    res.render('home');
}

exports.about = (req, res) => {
    res.send('About Us');   
}

exports.athletes = (req, res) => {
    res.send('Athletes Page');
}

exports.getAllSport = async (req, res) => {
    try {
        const sports = await Sport.find();
        res.render('sport', { sports });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve sports');
    }
}

exports.getAllVenue = async (req, res) => {
    try {
        const venues = await Venue.find();
        res.render('venue', { venues });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve venues');
    }
}

exports.getAllCountry = async (req, res) => {
    try {
        const countries = await Country.find();
        res.render('country', { countries });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve countries');
    }
}

exports.search = (req, res) => {
    res.send('Search Page');
}