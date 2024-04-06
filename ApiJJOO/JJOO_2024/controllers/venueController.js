const Venue = require('../models/Venue');

exports.getAllVenue = async (req, res) => {
    try {
        const venues = await Venue.find();
        res.render('venue', { venues });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve venues');
    }
}

exports.searchVenue = async (req, res) => {
    try {
        const { q, field } = req.query;
        const query = {};

        // Verificar si q es un número
        const isNumber = !isNaN(q);

        // Si el campo es 'age' y q es un número, buscar por edad exacta
        if (field === 'capacity' && isNumber) {
            query[field] = q;
        } else {
            // De lo contrario, buscar como texto
            query[field] = { $regex: q, $options: 'i' };
        }

        const venues = await Venue.find(query);

        if (venues.length === 0) {
            // Si no se encuentran atletas, renderizar una vista de error personalizada
            return res.render('error', { message: 'No venues found' });
        }
        
        // Renderizar la vista con los atletas encontrados
        res.render('venueSearch', { venues });
    } catch (error) {
        console.error('Error searching venues:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
}
