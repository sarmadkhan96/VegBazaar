const express = require('express');
const sql = require('mysql');
const app = express();
const bp = require('body-parser');


//Create Connection
const db = sql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: "vegbazaar"
});

//Connect
db.connect((err) => {
    if (err) { throw err; }
    console.log("MySql Connected");

});


app.use(bp.urlencoded({
    extended: true
}));

/**bodyParser.json(options)
 * Parses the text as JSON and exposes the resulting object on req.body.
 */
app.use(bp.json());

app.post("/", function(req, res) {

    console.log("Hello World");
    var form = document.querySelector('#Register');
    getFormData.getFieldData(form, 'firstname');
});


//Throw Date to DB
function CallFunction() {
    console.log("Hello World");
    var form = document.querySelector('#Register')

    app.get('/throwdata', (req, res) => {
        let data = {
            Cust_name: getFormData.getFieldData(form, 'firstname') + getFormData.getFieldData(form, 'lastname'),
            Cust_Phone: getFormData.getFieldData(form, 'telephone'),
            Cust_Adr: getFormData.getFieldData(Form, 'address_1'),
            Postal_Code: getFormData.getFieldData(Form, 'postcode'),
            Email: getFormData.getFieldData(Form, 'email'),
            C_password: getFormData.getFieldData(Form, 'password')
        }
        let sql = 'INSERT INTO customer SET ?';
        let query = db.query(sql, data, (err, result) => {
            if (err) { throw err; }
            res.send('data added');
        });
    });
}


app.listen('3000', () => {
    console.log("Server Started on port 3000...");
});