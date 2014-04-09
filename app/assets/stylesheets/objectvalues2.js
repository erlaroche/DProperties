//if a property that does not yet exitst is set with the = opertator, it is added to the object, as in the following example:

var empty = {};
empty.notReally = 1000;
empty;
//{notReally: 1000}

// properties whose names are not valid variable names cannot be accessed with the dot notation, but only using brackets. 
// when createing an object, these have to be quoted, unless they are numbers:

var thing = { "gabba gabba": "hey", 5:10 };
thing["5"];
//10
thing[2+3];
//10
thing["gabba gabba"];
//hey
delete thing["gabba gabba"];
thing;
//Object { 5:10 }

//you can also use variables to name properties
var propertyName = "length";
var text = "coco";
text[propertyName]; //essentially calls length on "coco"
//4


//the operator in can be used to test whether an object has a certain property. It produces a Boolean.
var chineseBox = {};
chineseBox.content = chineseBox;
//Object {content: Object}
"content" in chineseBox;
//true
"content" in chineseBox.content;
//true