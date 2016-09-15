rendering
renderContentOn: html
	self session loggable isNil
		ifTrue: [ self renderFormOn: html ]
		ifFalse: [ html heading: 'Welcome, ' , self session loggable login. self renderLogoutAnchorOn: html ]