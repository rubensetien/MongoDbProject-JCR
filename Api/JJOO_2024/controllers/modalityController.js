const Modality = require('../models/Modality');

exports.getModality = async (req, res) => {
    try {
        const { modality, gender } = req.query;
        
        // Verificar si se proporciona un parámetro de modalidad
        if (!modality) {
            return res.status(400).json({ error: 'Modality parameter is required' });
        }

        // Buscar todas las modalidades con el nombre y género proporcionados
        const modalities = await Modality.find({ name: modality});

        // Verificar si se encontraron modalidades
        if (modalities.length === 0) {
            return res.status(404).json({ error: 'Modality not found' });
        }

        // Renderizar la vista con las modalidades encontradas
        res.render('modality', { modalities });
    } catch (error) {
        console.error('Error searching modality:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
