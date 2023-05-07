import express from "express";
import passport from "passport";
import authRoutes from "./routes/auth.routes.js";

const app = express()

app.use(express.json());
app.use(passport.initialize());

app.get('/', (req, res) => {
    res.json("holamundo")
})

app.use('/api/auth', authRoutes);

export default app;