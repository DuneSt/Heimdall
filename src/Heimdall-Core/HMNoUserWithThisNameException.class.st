"
I am an exception when we look for an user that does not exist
"
Class {
	#name : #HMNoUserWithThisNameException,
	#superclass : #Error,
	#instVars : [
		'name'
	],
	#category : 'Heimdall-Core-Exception'
}

{ #category : #signalling }
HMNoUserWithThisNameException class >> signalWithName: aName [
	self new
		name: aName;
		signal
]

{ #category : #accessing }
HMNoUserWithThisNameException >> name [
	^ name
]

{ #category : #accessing }
HMNoUserWithThisNameException >> name: anObject [
	name := anObject
]
