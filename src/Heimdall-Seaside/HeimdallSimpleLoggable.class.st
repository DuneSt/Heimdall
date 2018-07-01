Class {
	#name : #HeimdallSimpleLoggable,
	#superclass : #Object,
	#traits : 'TLoggable',
	#classTraits : 'TLoggable classTrait',
	#instVars : [
		'login',
		'password',
		'id'
	],
	#category : #'Heimdall-Seaside'
}

{ #category : #'as yet unclassified' }
HeimdallSimpleLoggable class >> userWithID: aUserId password: aUserPassword [ 
	^ self new login: aUserId; password: aUserPassword; yourself
]

{ #category : #accessing }
HeimdallSimpleLoggable >> id [
	^ id
]

{ #category : #accessing }
HeimdallSimpleLoggable >> id: anObject [
	id := anObject
]

{ #category : #accessing }
HeimdallSimpleLoggable >> loggableManager [
	^ self class
]

{ #category : #accessing }
HeimdallSimpleLoggable >> login [
	^ login
]

{ #category : #accessing }
HeimdallSimpleLoggable >> login: anObject [
	login := anObject
]

{ #category : #accessing }
HeimdallSimpleLoggable >> password [
	^ password
]

{ #category : #accessing }
HeimdallSimpleLoggable >> password: anObject [
	password := anObject
]
