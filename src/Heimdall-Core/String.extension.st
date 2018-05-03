Extension { #name : #String }

{ #category : #'*Heimdall-Core' }
String >> french: aFrenchTranslation [
	^ TranslateText english: self french: aFrenchTranslation
]
