tests
testFrenchText
	| text |
	text := 'English' french: 'French'.
	self assert: text frenchText equals: 'French'