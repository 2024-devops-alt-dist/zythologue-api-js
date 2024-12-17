import { Router } from "express";
export const router = Router();

import { breweriesController } from "../controllers/breweries";

router.get("/", breweriesController.getAll);
router.get("/:id", breweriesController.getById);
router.post("/", breweriesController.post);
router.put("/:id", breweriesController.put);
router.delete("/:id", breweriesController.delete);