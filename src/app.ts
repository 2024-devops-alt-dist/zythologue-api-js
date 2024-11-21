import express, { Application } from "express";
const app: Application = express()

const version = "v1";
const path = `/api/${version}`;

import { router as beersRoute } from "./routes/beers";
app.use(`${path}/beers`, beersRoute);

export default app;