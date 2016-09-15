error-management
popAllErrorMessages 
	| messages |
	messages := self errorMessages asOrderedCollection.
	self errorMessages removeAll.
	^ messages