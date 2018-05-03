var mysql = require("mysql");
var inquirer = require("inquirer");


// create the connection information for the sql database, please provide your own:
// host:
// port:
// user:
// password:
// database: "bamazon_db" (bamazonSchema.sql) contains the schema for this database.

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  // Your username
  user: "root",
  // Your password
  password: "",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
  if (err) throw err;
  console.log("Welcome to Bamazon");
  listProducts();
});

//Display all products (item_id, product_name, price) and return the result object:
function listProducts() {
  connection.query("SELECT item_id, product_name, price  FROM products", function (err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log('\n ' + "ID: " + res[i].item_id + " | " + "Product: " + res[i].product_name + " | " + "Price: " + "$" + res[i].price.toFixed(2));

    }
  });


  customerPrompt();
  // run the customerPrompt function after the connection is made, and Items are displayed, to prompt the user to enter item_id and quantity of product.

  function customerPrompt() {
    inquirer
      .prompt([{
        name: "item_id",
        type: "input",
        message: "What is the ID of the product you would like to purchase?",
      },

      {
        name: "quantity",
        type: "input",
        message: "How many of this product would you like to purchase?",


      }]).then(function (answer) {
        connection.query("SELECT item_id, product_name, department_name, price, stock_quantity FROM products WHERE?", { item_id: answer.item_id }, function (err, res) {
          for (var i = 0; i < res.length; i++)
            if (res[i].stock_quantity >= answer.quantity) {
              
              console.log("There is sufficient stock to fill this order" );
            }
            else {
              console.log("Insufficient stock, order cannot be completed, please try again");

            }
            
           connection.end();
        })
      })
  }
}
