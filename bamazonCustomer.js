var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  	host: "localhost",
  	port: 3306,

  	// Your username
  	user: "root",

  	// Your password
  	password: "",
  	database: "bamazon"
});

connection.connect(function(err) {
  	if (err) throw err;
  	console.log("connected as id " + connection.threadId);
  	queryAllProducts();
  	// connection.end();
});

function queryAllProducts() {
	connection.query("SELECT * FROM products", function (err, result) {
		for (var i = 0; i < result.length; i++) {
			console.log(result[i].item_id + " | " + result[i].product_name + " | " + result[i].department_name + " | " + result[i].price);
		}
	buy();
    })
}

function buy() {
    inquirer
        .prompt([
            {
            name: "id",
            type: "input",
            message: "What is the ID number of the product you would like to buy?"
            },
            {
            name: "units",
            type: "input",
            message: "How many units would you like to buy of this product?"
            }
        ])
        .then(function(result) {
            connection.query("SELECT * FROM products WHERE item_id='" + result.id +"'", function (err, db_result) {
                if (db_result[0].stock_quantity > result.units) {
                    console.log("This item is available. Your total cost is " + db_result[0].price * result.units);
                    connection.query("UPDATE products SET stock_quantity='" + (db_result[0].stock_quantity - result.units) +"'WHERE item_id='" + result.id +"'", function () {
                    connection.end();
                    });
                }
                else {
                    console.log("Insufficient quantity!");
                    connection.end();
                }
            })
        })
}