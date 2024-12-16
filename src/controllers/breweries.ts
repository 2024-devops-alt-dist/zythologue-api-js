import { Request, Response } from "express";
import { pool } from "../db/config";
import dotenv from "dotenv";
dotenv.config();

export const breweriesController = {
    get:  async  (req: Request, res: Response) => {
        try {
            const data = await pool.query('SELECT * FROM brewery');
            res.status(200).json({data : data.rows});
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
    post: (req: Request, res: Response) => {
        res.status(201).json({ data: "ajout de la brasserie !" });
    },
    put: (req: Request, res: Response) => {
        res.status(200).json({ data: "modification de la brasserie !" });
    },
    delete: async (req: Request, res: Response) => { 
        const id = parseInt(req.params.id, 10);

        if (isNaN(id)) {
           res.status(400).json({ message: 'ID invalide' });
           return
        }
        try {
            const result = pool.query('DELETE FROM brewery WHERE id = $1', [id]);
            res.status(200).json({ data: "suppression de la brasserie !" });
        } catch (error) {
            res.status(200).json({ msg: error, message: "y a une erreur" });
        }
    },
};
