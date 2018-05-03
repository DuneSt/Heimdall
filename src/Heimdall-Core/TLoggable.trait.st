"
I am a trait for every object that is loggable (like a Client, a user...)
"
Trait {
	#name : #TLoggable,
	#category : 'Heimdall-Core-Traits'
}

{ #category : #security }
TLoggable >> hydePassword: aPassword [
	^ SHA256 hashMessage: aPassword
]

{ #category : #testing }
TLoggable >> isLogged [
	^ self loggableManager isLogged: self
]

{ #category : #accessing }
TLoggable >> loggableManager [
	^ self explicitRequirement
]

{ #category : #accessing }
TLoggable >> login [
	^ self explicitRequirement
]

{ #category : #accessing }
TLoggable >> login: aLogin [
	self explicitRequirement
]

{ #category : #accessing }
TLoggable >> password [
	^ self explicitRequirement
]

{ #category : #accessing }
TLoggable >> password: aPassword [
	self explicitRequirement
]

{ #category : #testing }
TLoggable >> verifyPassword: aString [
	^ (self hydePassword: aString) = self password.
]
