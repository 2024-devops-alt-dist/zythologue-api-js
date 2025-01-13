import express, { Application } from "express";
var cors = require('cors')
const app: Application = express()
import { setupSwagger } from "./swagger";
const corsOptions = {
    origin: ['http://localhost:3000/', 'http://localhost:5173/'], // Remplace par l'URL de ton front
    methods: ['GET', 'POST', 'PUT', 'DELETE'], // Méthodes autorisées
    allowedHeaders: ['Content-Type', 'Authorization'], // En-têtes autorisés
  };
app.use(cors(corsOptions))

var bodyParser = require('body-parser')
app.use(bodyParser.json())

const version = "v1";
const path = `/api/${version}`;

setupSwagger(app);

import { router as beersRoute } from "./routes/beers";
app.use(`${path}/beers`, beersRoute);

import { router as breweriesRoute } from "./routes/breweries";
app.use(`${path}/breweries`, breweriesRoute);

export default app;