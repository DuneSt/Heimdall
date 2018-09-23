"
I am a session that store a loggable object to ensure a Customer is logged for example
"
Class {
	#name : #HeimdallSession,
	#superclass : #WASession,
	#instVars : [
		'loggable',
		'language',
		'rootComponent',
		'errorMessages'
	],
	#category : #'Heimdall-Seaside'
}

{ #category : #'connection open/close' }
HeimdallSession >> disconnect [
	self loggable: nil
]

{ #category : #accessing }
HeimdallSession >> errorMessages [
	^ errorMessages
]

{ #category : #accessing }
HeimdallSession >> errorMessages: anObject [
	errorMessages := anObject
]

{ #category : #initialization }
HeimdallSession >> initialize [
	super initialize.
	self errorMessages: Stack new
]

{ #category : #testing }
HeimdallSession >> isLogged [
	^ self loggable isNotNil
]

{ #category : #accessing }
HeimdallSession >> language [
	^ language ifNil: [ #english ]
]

{ #category : #accessing }
HeimdallSession >> language: anObject [
	language := anObject
]

{ #category : #accessing }
HeimdallSession >> loggable [
	^ loggable
]

{ #category : #accessing }
HeimdallSession >> loggable: anObject [
	loggable := anObject
]

{ #category : #'error-management' }
HeimdallSession >> popAllErrorMessages [ 
	| messages |
	messages := self errorMessages asOrderedCollection.
	self errorMessages removeAll.
	^ messages
]

{ #category : #'error-management' }
HeimdallSession >> pushErrorMessage: anErrorMessage [
	self errorMessages push: anErrorMessage
]

{ #category : #accessing }
HeimdallSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
HeimdallSession >> rootComponent: aSYNWebRoot [ 
	rootComponent := aSYNWebRoot
]
