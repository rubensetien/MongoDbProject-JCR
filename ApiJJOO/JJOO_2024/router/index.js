const express = require('express');
const router = express.Router();
const olympicController = require('../controllers/olympicController');

module.exports = () => {
    router.get('/', olympicController.home);

    router.get('/about', olympicController.about);

    router.get('/athletes', olympicController.getAllAthlete);

    router.get('/sports', olympicController.getAllSport);

    router.get('/venues', olympicController.getAllVenue);

    router.get('/country', olympicController.getAllCountry);

    router.get('/search', olympicController.search);


    
    return router;
}