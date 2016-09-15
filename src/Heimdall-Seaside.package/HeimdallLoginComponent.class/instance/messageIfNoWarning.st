accessing
messageIfNoWarning
	self session loggable notNil
		ifTrue: [ ^ 'Logged in as ' , self session loggable login ].
	(userID isNil or: [ userID isEmpty ])
		ifTrue: [ ^ 'Please enter User ID and Password' ].
	^ 'Login failed!'