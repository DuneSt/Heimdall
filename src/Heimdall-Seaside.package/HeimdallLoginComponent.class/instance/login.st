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
		on: HMNoUserWithThisNameException, HMWrongPasswordException 
		do: [ self flag: #TODO	"display an error when user or password is wrong" ]