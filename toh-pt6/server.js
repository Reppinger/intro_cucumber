var express = require('express');
var app = express();
var cors = require('cors');

app.use(cors());

app.get('/api/heroes', function (req, res) {
   
    var sql = require("mssql");

    // config for your database
    var config = {
        user: 'hero_worshipper',
        password: 'Pa55word$',
        server: 'localhost', 
        database: 'TourOfHeroes' 
    };

    // connect to your database
    sql.connect(config, function (err) {
    
        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();
           
        // query to the database and get the records
        request.query('select * from Heroes', function (err, recordset) {
            
            if (err) console.log(err)
            const heroes = [
                { id: 11, name: 'Dr Nice' },
                { id: 12, name: 'Narcolepsy' },
                { id: 13, name: 'Bombasto' },
                { id: 14, name: 'Celeritas' },
                { id: 15, name: 'Magneta' },
                { id: 16, name: 'RubberMan' },
                { id: 17, name: 'Dynama' },
                { id: 18, name: 'Dr IQ' },
                { id: 19, name: 'Magma' },
                { id: 20, name: 'Tornado' }
              ];          
            // send records as a response
            res.send(heroes);
            
        });
    });
});

var server = app.listen(5000, function () {
    console.log('Server is running..');
});