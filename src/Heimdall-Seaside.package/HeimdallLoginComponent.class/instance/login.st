accessing
login
	| user |
	[ 
	user := self loggableManager userWithID: userID password: password.
	self session loggable: user.
	user
		ifNotNil: [ 
			userID := nil.
			password := nil ].
	self postLoginActionOn: user ]
		on: HMNoUserWithThisNameException , HMWrongPasswordException
		do: [ :error | self errorOnLogin: error ]