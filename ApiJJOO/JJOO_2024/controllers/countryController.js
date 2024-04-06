const Country = require('../models/Country');

exports.getAllCountry = async (req, res) => {
    try {
        const countries = await Country.find();
        res.render('country', { countries });
    } catch (err) {
        console.error(err);
        res.status(500).send('Failed to retrieve countries');
    }
}

exports.searchCountry = async (req, res) => {
    try {
        const { q, field } = req.query;
        const query = {};

        // Verificar si q tiene un valor
        if (q) {
            // Verificar si q es un número
            const isNumber = !isNaN(q);

            // Construir la consulta dinámicamente según el campo seleccionado y el tipo de búsqueda
            if ((field === 'population' || field === 'representatives') && !isNumber) {
                // Si el campo es 'population' o 'representatives' y q no es un número, buscar como texto (ignorando mayúsculas/minúsculas)
                query[field] = { $regex: q, $options: 'i' };
            } else {
                // De lo contrario, buscar por valor exacto
                query[field] = q;
            }
        }

        // Ejecutar la consulta en la base de datos
        const countries = await Country.find(query);

        if (countries.length === 0) {
            // Si no se encuentran países, renderizar una vista de error personalizada
            return res.render('error', { message: 'No countries found' });
        }
        
        
        // Renderizar la vista con los países encontrados
        res.render('countrySearch', { countries });
    } catch (error) {
        console.error('Error searching countries:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};

