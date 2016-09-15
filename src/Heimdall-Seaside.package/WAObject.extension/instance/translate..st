*Heimdall-Seaside
translate: aTranslateText
	^ aTranslateText textInLanguage: ([self session language] on: WARequestContextNotFound do: [ #english ])