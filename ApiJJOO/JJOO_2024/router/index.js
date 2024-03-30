const express = require('express');
const router = express.Router();
const olympicController = require('../controllers/olympicController');

module.exports = () => {
    router.get('/', olympicController.home);

    router.get('/about', olympicController.about);

    router.get('/athletes', olympicController.athletes);

    router.get('/sports', olympicController.sports);

    router.get('/venues', olympicController.venues);

    router.get('/country', olympicController.country);

    router.get('/search', olympicController.search);
    
    return router;
}