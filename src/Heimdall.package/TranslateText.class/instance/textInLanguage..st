accessing
textInLanguage: aLanguage
	^ self textsByLanguage at: aLanguage ifAbsent: [ self textsByLanguage anyOne ]