tests
testInto
	| text |
	text := 'English' french: 'French'.
	self assert: (text into: #french) equals: 'French'.
	self assert: (text into: #english) equals: 'English'