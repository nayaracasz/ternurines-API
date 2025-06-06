const PORT = process.env.PORT || 3000;
const DB_USER = process.env.MYSQLUSER || 'root';
const DB_PASSWORD = process.env.MYSQLPASSWORD;
const DB_PORT = process.env.MYSQLPORT || 3306;
const DB_HOST = process.env.MYSQLHOST || 'localhost';
const DB_DATABASE = process.env.MYSQL_DATABASE || 'sylvanianfamilies';
const DB_SSL_CA = process.env.DB_SSL_CA || null;

module.exports = {
    PORT: PORT,
    DB_USER: DB_USER,
    DB_PASSWORD: DB_PASSWORD,
    DB_PORT: DB_PORT,
    DB_HOST: DB_HOST,
    DB_DATABASE: DB_DATABASE,
    DB_SSL_CA: DB_SSL_CA
}