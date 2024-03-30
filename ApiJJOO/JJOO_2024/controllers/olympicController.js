const Country = require('../models/Country');

exports.home = (req, res) => {
    res.render('home');
}

exports.about = (req, res) => {
    res.send('About Us');   
}

exports.athletes = (req, res) => {
    res.send('Athletes Page');
}

exports.sports = (req, res) => {
    res.send('Sports Page');
}

exports.venues = (req, res) => {
    res.send('Venues Page');
}

    exports.getAllCountry = async (req, res) => {
        try {
            const countries = await Country.find();
            res.render('country', { countries });
        } catch (err) {
            console.error(err);
            res.status(500).send('Error al obtener los países');
        }
    }

exports.search = (req, res) => {
    res.send('Search Page');
}