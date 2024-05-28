const env = require('dotenv');
env.config();
const PORT = process.env.PORT || 3000;
const DB_USER = process.env.DB_USER || 'root';
const DB_PASSWORD = process.env.DB_PASSWORD;
const DB_PORT = process.env.DB_PORT || 3006;
const DB_HOST = process.env.DB_HOST || 'localhost';
const DB_DATABASE = process.env.DB_DATABASE || 'sylvanianfamilies';

module.exports = {
    PORT: PORT,
    DB_USER: DB_USER,
    DB_PASSWORD: DB_PASSWORD,
    DB_PORT: DB_PORT,
    DB_HOST: DB_HOST,
    DB_DATABASE: DB_DATABASE
}