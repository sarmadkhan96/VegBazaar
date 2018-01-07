var db=require("../config/db");
var mongoose=require("mongoose");
var product=new mongoose.Schema({
  Product_name:String,
  Brand:String,
  Price:String,
    Tax:String,
    discount:String,
    Quantity:String,
    image:String

});
var Products=module.exports=mongoose.model("Products",product);
