Extension { #name : #WAObject }

{ #category : #'*Heimdall-Seaside' }
WAObject >> translate: aTranslateText [
	^ aTranslateText textInLanguage: ([self session language] on: WARequestContextNotFound do: [ #english ])
]

{ #category : #'*Heimdall-Seaside' }
WAObject >> translate: anEnglishText french: aFrenchText [
	^ self translate: (anEnglishText french: aFrenchText)
]
