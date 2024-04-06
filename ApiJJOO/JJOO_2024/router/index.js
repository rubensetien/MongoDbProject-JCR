const express = require('express');
const router = express.Router();
const mainController = require('../controllers/mainController');
const athleteController = require('../controllers/athleteController');
const countryController = require('../controllers/countryController');
const venueController = require('../controllers/venueController');
const sportController = require('../controllers/sportController');
const modalityController = require('../controllers/modalityController');

module.exports = () => {
    router.get('/', mainController.home);

    router.get('/error', mainController.error);

    router.get('/athletes', athleteController.getAllAthlete);

    router.get('/sports', sportController.getAllSport);

    router.get('/venues', venueController.getAllVenue);

    router.get('/country', countryController.getAllCountry);

    router.get('/athleteSearch', athleteController.searchAthlete);

    router.get('/countrySearch', countryController.searchCountry);
    
    router.get('/venueSearch', venueController.searchVenue);

    router.get('/sportSearch', sportController.searchSport);

    router.get('/modality', modalityController.getModality);

    return router;
}