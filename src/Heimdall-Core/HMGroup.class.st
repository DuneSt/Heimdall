"
I am a group of users and i define their rights
"
Class {
	#name : #HMGroup,
	#superclass : #Object,
	#traits : 'TRightConstrained',
	#classTraits : 'TRightConstrained classTrait',
	#instVars : [
		'users',
		'rights',
		'name'
	],
	#category : 'Heimdall-Core-util'
}

{ #category : #'as yet unclassified' }
HMGroup class >> named: aName [
	^ self new
		name: aName;
		yourself
]

{ #category : #translation }
HMGroup class >> translatedKind [
	^ 'Group' french: 'Groupe'
]

{ #category : #'as yet unclassified' }
HMGroup >> addUser: aSYNUserLoggable [ 
	self users add: aSYNUserLoggable .
]

{ #category : #initialization }
HMGroup >> initialize [
	super initialize.
	self rights: OrderedCollection new.
	self users: OrderedCollection new
]

{ #category : #accessing }
HMGroup >> name [
	^ name 
]

{ #category : #accessing }
HMGroup >> name: anObject [
	name := anObject
]

{ #category : #'as yet unclassified' }
HMGroup >> printOn: aStream [
	super printOn: aStream.
	aStream << $(.
	aStream << self name.
	aStream << $)
]

{ #category : #users }
HMGroup >> removeUser: anUser [
	self users remove: anUser.
]

{ #category : #accessing }
HMGroup >> rights [
	^ rights
]

{ #category : #accessing }
HMGroup >> rights: anObject [
	rights := anObject
]

{ #category : #accessing }
HMGroup >> users [
	^ users
]

{ #category : #accessing }
HMGroup >> users: anObject [
	users := anObject
]
