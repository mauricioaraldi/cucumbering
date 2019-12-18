const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const Mathematics = require('../../functions/math.js');

Given('two numbers {int} and {int}', function(a, b) {
	this.a = a;
	this.b = b;
});

When('I want to perform a {string}', function(operation) {
	this.actualAnswer = chooseOperation(operation, this.a, this.b);
});

Then('I want to {string} {int}', function(operation, c) {
	this.actualAnswer = chooseOperation(operation, this.actualAnswer, c);
});

Then('I should be told {int}', function(expectedAnswer) {
	assert.equal(this.actualAnswer, expectedAnswer);
});



function chooseOperation(operation, a, b) {
	switch (operation) {
		case 'divide':
			return Mathematics.divide(a, b);

		case 'multiply':
			return Mathematics.multiply(a, b);

		case 'sum':
			return Mathematics.sum(a, b);

		default:
			return a;
	}
}