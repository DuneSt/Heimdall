accessing
login
| user |
user := self loggableManager
	userWithID: userID
	password: password.
self session loggable: user.
user notNil ifTrue: [
userID := nil.
password := nil.
].