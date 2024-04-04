const express = require('express');
const router = express.Router();
const mainController = require('../controllers/mainController');
const athleteController = require('../controllers/athleteController');
const countryController = require('../controllers/countryController');
const venueController = require('../controllers/venueController');
const sportController = require('../controllers/sportController');

module.exports = () => {
    router.get('/', mainController.home);

    router.get('/about', mainController.about);

    router.get('/athletes', athleteController.getAllAthlete);

    router.get('/sports', sportController.getAllSport);

    router.get('/venues', venueController.getAllVenue);

    router.get('/country', countryController.getAllCountry);

    router.get('/athleteSearch', athleteController.searchAthlete);

    router.get('/countrySearch', countryController.searchCountry);
    
    router.get('/venueSearch', venueController.searchVenue);

    router.get('/sportSearch', sportController.searchSport);

    return router;
}