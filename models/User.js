import { Schema, model } from "mongoose";

const userSchema = new Schema({
    username: {
      type: String,
      required: true,
      unique: true
    },
    email: {
      type: String,
      required: true,
      unique: true
    },
    password: {
      type: String,
      required: true
    },
    roles: [{
        ref: 'Role',
        type: Schema.Types.ObjectId
    }],
    createdAt: {
      type: Date,
      default: Date.now
    }
});
  
export default model('User', userSchema);