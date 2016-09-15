as yet unclassified
isAllowedTo: aSymbol
	^ (self group isNotNil and: [ self group isAllowedTo: aSymbol ]) or: [ self rights includes: aSymbol ]