Trait {
	#name : #TUser,
	#traits : 'TRightConstrained',
	#classTraits : 'TRightConstrained classTrait',
	#category : 'Heimdall-Core-Traits'
}

{ #category : #group }
TUser >> addToGroup: aHMGroup [ 
	self groups add: aHMGroup.
	aHMGroup addUser: self
]

{ #category : #accessing }
TUser >> groups [
	self explicitRequirement
]

{ #category : #accessing }
TUser >> groups: aCollectionOfGroups [
	self explicitRequirement
]

{ #category : #'as yet unclassified' }
TUser >> isAllowedTo: aSymbol [
	^ (self group isNotNil and: [ self group isAllowedTo: aSymbol ]) or: [ self rights includes: aSymbol ]
]

{ #category : #group }
TUser >> removeFromGroup: aHMGroup [ 
	self groups remove: aHMGroup.
	aHMGroup removeUser: self
]

{ #category : #'as yet unclassified' }
TUser >> rights [
	self explicitRequirement
]

{ #category : #'as yet unclassified' }
TUser >> rights: aCollectionOfRights [
	self explicitRequirement
]

{ #category : #groupAssignation }
TUser >> toggleGroup: aHMGroup [
	(self isPartOf: aHMGroup)
		ifTrue: [ self removeFromGroup: aHMGroup ]
		ifFalse: [ self addToGroup: aHMGroup ]
]
