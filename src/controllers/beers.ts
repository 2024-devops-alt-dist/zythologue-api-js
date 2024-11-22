import { Request, Response } from "express";
import { pool } from "../db/config";
import dotenv from "dotenv";
dotenv.config();

export const beersController = {
    get:  async  (req: Request, res: Response) => {
        try {
            const data = await pool.query('SELECT * FROM beer');
            res.status(200).json({data : data.rows});
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
    post: (req: Request, res: Response) => {
        res.status(201).json({ data: "ajout de la bière !" });
    },
    put: (req: Request, res: Response) => {
        res.status(200).json({ data: "modification de la bière !" });
    },
    delete: (req: Request, res: Response) => {
        res.status(200).json({ data: "suppression de la bière !" });
    },
};