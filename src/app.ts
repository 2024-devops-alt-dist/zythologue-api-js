import express, { Application } from "express";
const app: Application = express()

var bodyParser = require('body-parser')
app.use(bodyParser.json())

const version = "v1";
const path = `/api/${version}`;

import { router as beersRoute } from "./routes/beers";
app.use(`${path}/beers`, beersRoute);

import { router as breweriesRoute } from "./routes/breweries";
app.use(`${path}/breweries`, breweriesRoute);

export default app;