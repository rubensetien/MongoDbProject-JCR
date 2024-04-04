const Athlete = require('../models/Athlete');

exports.searchAthlete = async (req, res) => {
    try {
        const { q, field } = req.query;
        const query = {};

        // Verificar si q es un número
        const isNumber = !isNaN(q);

        // Si el campo es 'age' y q es un número, buscar por edad exacta
        if (field === 'age' && isNumber) {
            query[field] = q;
        } else {
            // De lo contrario, buscar como texto
            query[field] = { $regex: q, $options: 'i' };
        }

        const athletes = await Athlete.find(query);
        
        // Renderizar la vista con los atletas encontrados
        res.render('athleteSearch', { athletes });
    } catch (error) {
        console.error('Error searching athletes:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
