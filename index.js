const express = require('express');
const mysql = require('mysql');

const app = express();

app.set('view engine', 'ejs');

app.get('/', async (req, res) => {
    const connection = mysql.createConnection({
        host: 'localhost',
        database: 'database',
        user: 'root',
        password: 'mysql-password'
    });
    await connection.connect();
    const livros = await connection.query('SELECT * FROM livros');
    res.render('index', { livros });
});

app.listen(3000);