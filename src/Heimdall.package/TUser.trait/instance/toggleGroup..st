groupAssignation
toggleGroup: aHMGroup
	(self isPartOf: aHMGroup)
		ifTrue: [ self removeFromGroup: aHMGroup ]
		ifFalse: [ self addToGroup: aHMGroup ]