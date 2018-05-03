Trait {
	#name : #TRightConstrained,
	#category : 'Heimdall-Core-Traits'
}

{ #category : #accessing }
TRightConstrained >> addRight: aRight [
	^ self rights add: aRight
]

{ #category : #testing }
TRightConstrained >> isAllowedTo: aRight [
	^ self possessRight: aRight 
]

{ #category : #testing }
TRightConstrained >> possessRight: aRight [ 
	^ self rights includes: aRight.
]

{ #category : #rights }
TRightConstrained >> removeRight: aRight [
	self rights remove: aRight
]

{ #category : #'as yet unclassified' }
TRightConstrained >> rights [
	self explicitRequirement
]

{ #category : #'as yet unclassified' }
TRightConstrained >> rights: aCollectionOfRights [
	self explicitRequirement
]

{ #category : #rights }
TRightConstrained >> toggleRight: aRight [
	(self possessRight: aRight)
		ifTrue: [ self removeRight: aRight ]
		ifFalse: [ self addRight: aRight ]
]
