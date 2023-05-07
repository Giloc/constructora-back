import { Schema, model } from "mongoose";

const roleSchema = new Schema({
    name: {
      type: String,
      required: true,
      unique: true
    },
    createdAt: {
      type: Date,
      default: Date.now
    }
});
  
export default model('Role', roleSchema);