import { Router } from "express";
export const router = Router();

import { beersController } from "../controllers/beers";

router.get("/", beersController.getAll);
router.get("/:id", beersController.getById)
router.post("/", beersController.post);
router.put("/:id", beersController.put);
router.delete("/:id", beersController.delete);