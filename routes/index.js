var express = require('express');
var router = express.Router();
var mysql=require("mysql");
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database:"veg"
});


con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  })

router.get('/', function(req, res, next) {
    res.render('register', { title: 'Express' });
});


router.get("/products",function(req,res,next){
  con.query("select * from products",function(error,results){
  if(error) throw error;
  if(results.length>0)
  {
    console.log(results);
res.render("productview",{title:"Products",product:results})
  }
  else {
    console.log("error");
  }
});

})







router.post('/throwdata', function(req, res, next) {
    var firstname = req.body.firstname;
    var lastname = req.body.lastname;
    var Cust_name = firstname + lastname;
    var Cust_Phone = req.body.telephone;
    var Cust_Adr = req.body.address_1;
    var Postal_Code = req.body.postcode;
    var Email = req.body.email;
    var Password = req.body.password;
    var user = {
        "Cust_name": Cust_name,
        "Cust_Phone": Cust_Phone,
        "Cust_Adr": Cust_Adr,
        "Postal_Code": Postal_Code,
        "Email": Email,
        "Password": Password
    }

    con.query("insert into customer SET?", [user], function(error, results) {
        if (error) {
            console.log(error);
        }
        if (results) {
            console.log("User registered");
        }
    })


});

module.exports = router;
