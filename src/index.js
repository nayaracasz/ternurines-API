const express = require('express');
const swaggerUI = require('swagger-ui-express');
const swaggerJsDoc = require('swagger-jsdoc');
const { SwaggerTheme, SwaggerThemeNameEnum } = require('swagger-themes');
const path = require('path');
const fs = require('fs');
const yaml = require('yamljs');
const ternurinesRouter = require('../routes/ternurines.js');
const envar = require('./config.js');

const app = express();
const port = envar.PORT || 3000;
const swaggerDocs = yaml.load(path.join(__dirname, '../docs/apidocs.yaml'));
const theme = new SwaggerTheme();
const options = {
    explorer: true,
    customCss: theme.getBuffer(SwaggerThemeNameEnum.MUTED)
  };

app.use(express.json());

app.use('/', ternurinesRouter);

app.listen(port, () => {
    console.log(`Escuchando en el puerto ${port}!`);
});

app.use("/api-docs",swaggerUI.serve,swaggerUI.setup(swaggerDocs,options));

app.get('/api-docs-json', (req, res) => {
    res.json(swaggerDocs);
});