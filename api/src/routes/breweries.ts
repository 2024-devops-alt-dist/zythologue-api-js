import { Router } from "express";
export const router = Router();

import { breweriesController } from "../controllers/breweries";

router.get("/", breweriesController.get);
router.post("/", breweriesController.post);
router.put("/", breweriesController.put);
router.delete("/:id", breweriesController.delete);