"
I am a simple component to render a french and an english flag. When you click on a flag, the language will change.
"
Class {
	#name : #HeimdallLanguageSelectionComponent,
	#superclass : #WAComponent,
	#category : 'Heimdall-Seaside'
}

{ #category : #rendering }
HeimdallLanguageSelectionComponent >> renderContentOn: html [
	html div
		class: 'languageComponent';
		with: [ 
					html anchor
						callback: [ self session language: #french ];
						with: [ self renderFrenchFlagOn: html ].
					html space.
					html anchor
						callback: [ self session language: #english ];
						with: [ self renderEnglishFlagOn: html ] ]
]

{ #category : #rendering }
HeimdallLanguageSelectionComponent >> renderEnglishFlagOn: html [
	^ html image
		class: 'en';
		resourceUrl: self urlOfEnFlag
]

{ #category : #rendering }
HeimdallLanguageSelectionComponent >> renderFrenchFlagOn: html [
	^ html image
		class: 'fr';
		resourceUrl: self urlOfFrFlag
]

{ #category : #'as yet unclassified' }
HeimdallLanguageSelectionComponent >> urlOfEnFlag [
	^ (HeimdallFileLibrary urlOf: 'ukPng') asString
]

{ #category : #'as yet unclassified' }
HeimdallLanguageSelectionComponent >> urlOfFrFlag [
	^ (HeimdallFileLibrary urlOf: 'frPng') asString
]
