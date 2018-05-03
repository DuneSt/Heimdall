comparing
= anObject
	^ self == anObject or: [ self englishText = anObject englishText and: [ self frenchText = anObject frenchText ] ]