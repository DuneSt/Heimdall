"
A TranslateTextTest is a test class for testing the behavior of TranslateText
"
Class {
	#name : #TranslateTextTest,
	#superclass : #TestCase,
	#category : 'Heimdall-Core-Tests'
}

{ #category : #tests }
TranslateTextTest >> testEnglishText [
	| text |
	text := 'English' french: 'French'.
	self assert: text englishText equals: 'English'
]

{ #category : #tests }
TranslateTextTest >> testEquals [
	| inst1 inst2 |
	inst1 := 'English' french: 'French'.
	inst2 := 'English' french: 'French'.
	self assert: inst1 equals: inst2.
	
	inst2 := 'English2' french: 'French'.
	self deny: inst1 = inst2.
	
	inst2 := 'English' french: 'French2'.
	self deny: inst1 = inst2
]

{ #category : #tests }
TranslateTextTest >> testFrenchText [
	| text |
	text := 'English' french: 'French'.
	self assert: text frenchText equals: 'French'
]

{ #category : #tests }
TranslateTextTest >> testInto [
	| text |
	text := 'English' french: 'French'.
	self assert: (text into: #french) equals: 'French'.
	self assert: (text into: #english) equals: 'English'
]
