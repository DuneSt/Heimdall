tests
testEquals
	| inst1 inst2 |
	inst1 := 'English' french: 'French'.
	inst2 := 'English' french: 'French'.
	self assert: inst1 equals: inst2.
	
	inst2 := 'English2' french: 'French'.
	self deny: inst1 equals: inst2.
	
	inst2 := 'English' french: 'French2'.
	self deny: inst1 equals: inst2