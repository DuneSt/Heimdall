rights
toggleRight: aRight
	(self possessRight: aRight)
		ifTrue: [ self removeRight: aRight ]
		ifFalse: [ self addRight: aRight ]