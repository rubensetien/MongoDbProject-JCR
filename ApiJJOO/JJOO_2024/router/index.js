const express = require('express');
const router = express.Router();
const olympicController = require('../controllers/olympicController');

module.exports = () => {
    router.get('/', olympicController.home);

    router.get('/about', olympicController.about);

    router.get('/country', olympicController.country);
    
    return router;
}