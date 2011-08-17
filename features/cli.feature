Feature: Program run

As a space warrior
I want to run applicake program
So I can decode messages from aliens

	Scenario Outline: decoding
		Given I'm running program
		When I enter "<code>"
		Then answer should be "<answer>"
	
		Scenarios: hello applicake
		| code 																											| answer |
		| 1,1,e,7,4,2,2,e,5,4,2,i,1,H,6, ,1,1,1,l,14,k,2,2,1,o,9,3,c,3,2,2,1,p,1,1,1,1,l,4,3,A,9,4,a,3,7,l,4,1,3,1,p	| Hello Applicake |
		| 7,3,s,1,1,2,y,4,2,r,2,4,1,o,2,3, ,1,R,1,1,1,b,5,3,c,5,4,k,2,u | Ruby rocks |