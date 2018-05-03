"
I am a text translated in different languages.

All sessions object will be able to ask: ""self translate: field"" to get the translated text
"
Class {
	#name : #TranslateText,
	#superclass : #Object,
	#instVars : [
		'textsByLanguage'
	],
	#category : 'Heimdall-Core-util'
}

{ #category : #'as yet unclassified' }
TranslateText class >> english: englishText [
	^ self new englishText: englishText; yourself
]

{ #category : #'as yet unclassified' }
TranslateText class >> english: englishText french: frenchText [
	^ self new englishText: englishText; frenchText: frenchText; yourself
]

{ #category : #comparing }
TranslateText >> = anObject [
	^ self == anObject or: [ self textsByLanguage = anObject textsByLanguage ]
]

{ #category : #accessing }
TranslateText >> englishText [
	^ self textsByLanguage at: #english
]

{ #category : #accessing }
TranslateText >> englishText: anEnglishText [
	self textsByLanguage at: #english put: anEnglishText asString
]

{ #category : #accessing }
TranslateText >> frenchText [
	^ self textsByLanguage at: #french
]

{ #category : #accessing }
TranslateText >> frenchText: aFrenchText [
	self textsByLanguage at: #french put: aFrenchText asString
]

{ #category : #initialization }
TranslateText >> initialize [
	super initialize.
	self textsByLanguage: Dictionary new
]

{ #category : #accessing }
TranslateText >> into: aLanguage [
	^ self textInLanguage: aLanguage
]

{ #category : #printing }
TranslateText >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $[;
		<< (self englishText truncateTo: 30);
		<< $]
]

{ #category : #streaming }
TranslateText >> putOn: aStream [ 
	aStream nextPutAll: self textsByLanguage anyOne
]

{ #category : #accessing }
TranslateText >> textInLanguage: aLanguage [
	^ self textsByLanguage at: aLanguage ifAbsent: [ self textsByLanguage anyOne ]
]

{ #category : #accessing }
TranslateText >> textsByLanguage [
	^ textsByLanguage
]

{ #category : #accessing }
TranslateText >> textsByLanguage: anObject [
	textsByLanguage := anObject
]
