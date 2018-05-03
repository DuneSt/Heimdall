"
I am a special group for admins, my users have all rights
"
Class {
	#name : #HMAdminGroup,
	#superclass : #HMGroup,
	#category : 'Heimdall-Core-util'
}

{ #category : #'as yet unclassified' }
HMAdminGroup >> isAllowedTo: aSymbol [
	^ true
]
