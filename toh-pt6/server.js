var express = require('express');
var app = express();
var cors = require('cors');
var sql = require("mssql");

app.use(cors());

var config = {
    user: 'hero_worshipper',
    password: 'Pa55word$',
    server: 'localhost',
    database: 'TourOfHeroes'
};


app.get('/api/heroes', function (req, res) {
    sql.connect(config, function (err) {
        if (err) console.log(err);
        var request = new sql.Request();

        request.query('select * from Heroes', function (err, recordset) {
            if (err) console.log(err)
            let heroes = buildHeroes(recordset);
            res.send(heroes);
        });
    });
});

app.get('/api/heroes/:heroId', function (req, res) {
    sql.connect(config, function (err) {
        if (err) console.log(err);
        var request = new sql.Request();
        request.query('select * from Heroes where heroId=' + req.params['heroId'], function (err, recordset) {

            if (err) console.log(err)
            let hero = buildHero(recordset);
            res.send(hero);

        });
    });
});
app.delete('/api/heroes/:heroId', function (req, res) {
    sql.connect(config, function (err) {
        if (err) console.log(err);
        var request = new sql.Request();
        request.query('DELETE from Heroes where heroId=' + req.params['heroId'], function (err, recordset) {
            if (err) console.log(err)
        });
    });
});

var server = app.listen(5000, function () {
    console.log('Server is running..');
});

function buildHeroes(recordset) {
    // const heroes = [
    //     { id: 11, name: 'Dr Nice' },
    //     { id: 12, name: 'Narcolepsy' },
    //     { id: 13, name: 'Bombasto' },
    //     { id: 14, name: 'Celeritas' },
    //     { id: 15, name: 'Magneta' },
    //     { id: 16, name: 'RubberMan' },
    //     { id: 17, name: 'Dynama' },
    //     { id: 18, name: 'Dr IQ' },
    //     { id: 19, name: 'Magma' },
    //     { id: 20, name: 'Tornado' }
    // ];

    let heroes = [];
    recordset.recordset.forEach(function (hero) {
        heroes.push({ id: hero.HeroId, name: hero.Name });
    });
    return heroes;
}
function buildHero(recordset) {
    let hero = recordset.recordset[0];
    return { id: hero.HeroId, name: hero.Name };
}

