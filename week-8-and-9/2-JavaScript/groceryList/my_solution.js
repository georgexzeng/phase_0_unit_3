// U3.W8-9: 


// I worked on this challenge by myself.

// 2. Pseudocode

// var GroceryList = function(){}

// GroceryList.prototype.addItem = function(a_item, quantity, price){
// 	this[a_item]={};
// 	this[a_item].quantity = quantity;
// 	this[a_item].price = price;
// }
// GroceryList.prototype.deleteItem = function(d_item){
// 	delete this[d_item];
// }
// GroceryList.prototype.printList = function(){
// 	console.log(this);
// }

// var myGrocery = new GroceryList();
// myGrocery.printList();
// myGrocery.addItem("milk", 1, 10);
// myGrocery.addItem("apples", 5, 1);
// myGrocery.printList();
// myGrocery.deleteItem("apples");
// myGrocery.printList();

// 3. Initial Solution

// var GroceryList = function(){}

// GroceryList.prototype.addItem = function(a_item, quantity, price){
// 	this[a_item]={};
// 	this[a_item].quantity = quantity;
// 	this[a_item].price = price;
// }
// GroceryList.prototype.deleteItem = function(d_item){
// 	delete this[d_item];
// }
// GroceryList.prototype.printList = function(){
// 	console.log(this);
// }

// var myGrocery = new GroceryList();
// myGrocery.printList();
// myGrocery.addItem("milk", 1, 10);
// myGrocery.addItem("apples", 5, 1);
// myGrocery.printList();
// myGrocery.deleteItem("apples");
// myGrocery.printList();



// 4. Refactored Solution

function GroceryList(){

this.list = {};

this.addItem = function(a_item, quantity, price){
	this.list[a_item]={};
	this.list[a_item].quantity = quantity;
	this.list[a_item].price = price;
}
this.deleteItem = function(d_item){
	delete this.list[d_item];
}
this.printList = function(){
	console.log(this.list);
}
}

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

var myGrocery = new GroceryList();
myGrocery.printList();
myGrocery.addItem("milk", 1, 10);
myGrocery.addItem("apples", 5, 1);
myGrocery.printList();
myGrocery.deleteItem("apples");
myGrocery.printList();

// 5. Reflection 

// Couple of ways of driving to this same solution.
// In my first approach, I made the main variable a list
// whereas in my second approach, I created a list 
// underneath my main grocery list variable.