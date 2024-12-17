import express, { Application } from "express";
const app: Application = express()
import { setupSwagger } from "./swagger";


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