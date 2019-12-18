Feature: Performing mathematics operations

Scenario Outline: One operation, two numbers
	Given two numbers <a> and <b>
	When I want to perform a "<operation>"
	Then I should be told <answer>

Examples:
	| a | b | operation | answer |
	| 1 | 1 | sum 		| 2 	 |
	| 2 | 2 | sum 		| 4		 |
	| 3 | 3 | multiply 	| 9 	 |
	| 4 | 4 | multiply 	| 16	 |
	| 5 | 5 | divide 	| 1		 |
	| 6 | 2 | divide 	| 3		 |

Scenario Outline: Two operations, three numbers
	Given two numbers <a> and <b>
	When I want to perform a "<firstoperation>"
	Then I want to "<secondoperation>" <c>
	Then I should be told <answer>

Examples:
	| a | b | firstoperation 	| secondoperation	| c | answer |
	| 1 | 1 | sum 				| multiply			| 2 | 4		 |
	| 2 | 2 | sum 				| divide			| 2 | 2		 |
	| 3 | 3 | multiply 			| sum				| 3 | 12	 |
	| 4 | 4 | multiply 			| divide			| 8 | 2		 |
	| 5 | 5 | divide 			| sum				| 2 | 3		 |
	| 6 | 2 | divide 			| multiply			| 6 | 18	 |