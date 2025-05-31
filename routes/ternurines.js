const express = require('express');
const router = express.Router();
const mysql = require('mysql2');
const envar = require('../src/config.js');
const { message } = require('statuses');

const pool = mysql.createPool({
    host: envar.DB_HOST,
    user: envar.DB_USER,
    password: envar.DB_PASSWORD,
    database: envar.DB_DATABASE,
    port: envar.DB_PORT,
    ssl: {
        rejectUnauthorized: true,
        ca: envar.DB_SSL_CA
    }
});

pool.getConnection((err, connection) => {
    if (err) {
      console.error('Error connecting to the database:', err.message);
    } else {
      console.log('Successfully connected to the database');
      connection.release();
    }
});

router.get('/characters/:CharacterID?', (req, res, next) => {
    try{
        const characterID = req.params.CharacterID;
        let sql = `SELECT * FROM characters`;
        let params = [];
    
        if(characterID){
            sql += ` WHERE CharacterID = ?`;
            params.push(characterID);
        }
        pool.execute(
            sql, params,
            function(err, results, fields) {
                if(err){
                    res.status(404).json({ error: 'Datos no encontrados' });
                    return;
                } else {
                    res.send(results);
                    console.log(`Datos de personaje(s) obtenidos correctamente`);
                }
            });
    } catch (err) {
        res.status(500).json({ error: err.message, code: err.code });
    }
});

router.post('/characters', (req, res, next) => {
    try {
        const {name, family, role, description, image} = req.body;
        let params = [name, family, role, description, image];
        let sql = `INSERT INTO characters (CharacterName, FamilyName, Role, Description, Image) values (?, ?, ?, ?, ?)`;
        if(!name || !family || !role || !description || !image){
            res.status(400).json({ error: 'Se pide ingresar todos los datos para agregar un nuevo personaje' });
            return;
        }
        pool.execute(sql, params, function(err, results, fields){
            if(err){
                res.status(500).json({ error: 'No es posible agregar el personaje' });
                return;
            } else {
                res.status(201).json({ message: 'Nuevo personaje agregado correctamente', id: results.insertId });
            }
        });
    } catch (err) {
        res.status(500).json({ error: err.message, code: err.code });
    }
})

router.put('/characters/:CharacterID?', (req, res, next) => {
    const characterID = parseInt(req.params.CharacterID);
    let sql = 'UPDATE characters SET ? WHERE CharacterID = ?';
    const nuevosDatos = req.body;

    if (isNaN(characterID)) {
        return res.status(400).json({ error: 'ID de personaje inválido' });
    }

    if(!nuevosDatos || Object.keys(nuevosDatos).length === 0){
        res.status(400).json({message: 'Se pide al menos un campo para modificar un personaje'});
        return;
    }
    pool.query(sql, [nuevosDatos, characterID], function(err, results, fields){
        if(err){
            res.status(500).json({ error: 'No es posible modificar el personaje' });
            return;
        } else {
            res.status(201).json({ message: `Personaje ${characterID} modificado correctamente` });
        }
    })
})

router.delete('/characters/:CharacterID?', (req, res, next) => {
    try {
        const characterID = req.params.CharacterID;
        let sql = `DELETE FROM characters WHERE CharacterID = ${characterID}`;
        if(!characterID) { 
            res.status(400).json({message: 'Se debe colocar un ID para eliminar un personaje.'});
            return;
        }
        pool.execute(sql, function(err, results, fields) {
            if(err) {
                res.status(500).json({ error: 'Error al eliminar el personaje' });
                return;
            } else {
                res.status(201).json({ message: `Registro ${characterID} eliminado correctamente` });
            }
        });
    } catch (err) {
        res.status(500).json({ error: err.message, code: err.code });
    }
});

module.exports = router;