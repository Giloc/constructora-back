import mongoose from "mongoose";

mongoose.connect("mongodb+srv://giloc:contra@cluster0.i4tx3om.mongodb.net/constructora")
    .then(db => console.log("Db is connected"))
    .catch(err => console.log(err))