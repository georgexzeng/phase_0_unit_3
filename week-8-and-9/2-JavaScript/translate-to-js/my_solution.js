// U3.W8-9: Challenge you're converting - Reverse Words

// I worked on this challenge with Joseph White.

// 2. Pseudocode
// Create function reverse

// reverse accepts string as argument

// reverse takes last character from string and first character
// from string and switches positions

// this process then repeats for 2nd character and 2nd to last character
// etc. until entire string is reversed

// Number of times to switch characters is determined by
// taking length of string/2 rounded down

// the reversed string is then returned


// 3. Initial Solution

function reverse (word) {
	var index = -1
	var reversedWord = ""
	for (var i = 0; i < word.length; i++) {
		reversedWord += word.charAt(word.length + index)
		index -= 1
	}
	return reversedWord
}


// 4. Refactored Solution

function reverse (word) {
	var reversedWord = ""
	for (var i = 0; i < word.length; i++) {
		reversedWord += word.charAt(word.length -1 -i)
	}
	return reversedWord
}

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function randomWord (length) {
    var chars = '0123456789abcdefghijklmnopqrstuvwxyz'
    var result = '';
    for (var i = length; i > 0; --i) result += chars[Math.round(Math.random() * (chars.length - 1))];
    return result;
}

function assert(test, message, test_number){
	if(!test){
		console.log(test_number + "false");
		throw "ERROR: " + message;
	}
	console.log (test_number + "true");
	return true;
}

assert(
	(reverse instanceof Function), 
	"The reverse method should be a function.\n", 
	"1. "
)

assert(
	reverse("")==="", 
	"Checking to see if empty string returns empty string",
	"2. "
	)

assert(
	reverse("Thomas")==="samohT", 
	"Checking to see if the opposite of Thomas is samohT",
	"3. "
	)

assert(
	reverse("I like ice cream")==="maerc eci ekil I", 
	"Checking to see if the opposite of 'I like ice cream' is 'maerc eci ekil I'",
	"4. "
	)

// 5. Reflection 
// Relatively easy exercise; Joseph helped think up a more efficient way of tackling the problem than I had thought of before.  Overall - a great session!