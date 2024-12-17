
import { Application } from "express";
import swaggerJSDoc from "swagger-jsdoc";
import swaggerUi from "swagger-ui-express";

const swaggerOptions : any = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "API - Zythologie",
      version: "1.0.0",
      description: "API de gestion et affichage de bières et brasseries",
    },
    servers: [
      {
        url: "http://localhost:3000",
      },
    ],
  },
  apis: ["./src/routes/*.ts"],
};

export const swaggerSpec = swaggerJSDoc(swaggerOptions)

export const setupSwagger = (app : Application) => {
  app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec));
};
