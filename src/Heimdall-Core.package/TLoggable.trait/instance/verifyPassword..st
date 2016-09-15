testing
verifyPassword: aString
	^ (self hydePassword: aString) = self password.