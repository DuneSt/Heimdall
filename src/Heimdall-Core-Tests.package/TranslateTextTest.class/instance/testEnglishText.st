tests
testEnglishText
	| text |
	text := 'English' french: 'French'.
	self assert: text englishText equals: 'English'