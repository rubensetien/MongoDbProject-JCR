const Sport = require('../models/Sport');

exports.getAllSport = async (req, res) => {
    try {
        const sports = await Sport.find();
        res.render('sport', { sports });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve sports');
    }
}

exports.searchSport = async (req, res) => {
    try {
        const { q, field } = req.query;
        const query = {};

        query[field] = { $regex: q, $options: 'i' };

        const sports = await Sport.find(query);

        if (sports.length === 0) {
            // Si no se encuentran atletas, renderizar una vista de error personalizada
            return res.render('error', { message: 'No sports found' });
        }
        
        // Renderizar la vista con los atletas encontrados
        res.render('sportSearch', { sports });
    } catch (error) {
        console.error('Error searching sports:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
}