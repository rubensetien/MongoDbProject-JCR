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

exports.country = (req, res) => {
    res.send('Country Page');
}

exports.search = (req, res) => {
    res.send('Search Page');
}