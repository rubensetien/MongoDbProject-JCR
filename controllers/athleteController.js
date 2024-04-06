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
        } else if (field === 'medals' && isNumber) {
            // Si el campo es 'medals' y q es un número, buscar por cantidad exacta de medallas
            query[field] = q;
        } else {
            // De lo contrario, buscar como texto
            query[field] = { $regex: q, $options: 'i' };
        }

        const athletes = await Athlete.find(query);
        
        if (athletes.length === 0) {
            // Si no se encuentran atletas, renderizar una vista de error personalizada
            return res.render('error', { message: 'No athletes found' });
        }

        // Renderizar la vista con los atletas encontrados
        res.render('athleteSearch', { athletes });
    } catch (error) {
        console.error('Error searching athletes:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
}

exports.getAllAthlete = async (req, res) => {
    try {
        const athletes = await Athlete.find();
        res.render('athlete', { athletes });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve athletes');
    }
}