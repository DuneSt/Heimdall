"
I am a standard login component
"
Class {
	#name : #HeimdallLoginComponent,
	#superclass : #WAComponent,
	#instVars : [
		'userID',
		'password',
		'loggableManager',
		'postLoginActionBlock',
		'warning'
	],
	#category : 'Heimdall-Seaside'
}

{ #category : #'instance-creation' }
HeimdallLoginComponent class >> withLoggableManager: aLoggableManager [
	^ self withLoggableManager: aLoggableManager postAction: nil
]

{ #category : #'instance-creation' }
HeimdallLoginComponent class >> withLoggableManager: aLoggableManager postAction: aBlock [
	^ self new
		loggableManager: aLoggableManager;
		postLoginActionBlock: aBlock;
		yourself
]

{ #category : #hook }
HeimdallLoginComponent >> errorOnLogin: error [
	self
		warning:
			(self
				translate: 'Wrong username or password.'
				french: 'Mauvais pseudo utilisateur ou mot de passe')
]

{ #category : #initialization }
HeimdallLoginComponent >> initialize [
	super initialize.
	self loggableManager: HeimdallSimpleLoggable
]

{ #category : #accessing }
HeimdallLoginComponent >> loggableManager [
	^ loggableManager
]

{ #category : #accessing }
HeimdallLoginComponent >> loggableManager: anObject [
	loggableManager := anObject
]

{ #category : #accessing }
HeimdallLoginComponent >> login [
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
]

{ #category : #accessing }
HeimdallLoginComponent >> messageIfNoWarning [
	self session loggable notNil
		ifTrue: [ ^ (self translate: 'Logged in as ' french: 'Connecté en tant que ')
				, self session loggable login ].
	(userID isNil or: [ userID isEmpty ])
		ifTrue: [ ^ self
				translate: 'Please enter User ID and Password'
				french: 'Merci d''entrer votre pseudo d''utilisateur et votre mot de passe' ].
	^ self translate: 'Login failed!' french: 'Echec de la connexion'
]

{ #category : #accessing }
HeimdallLoginComponent >> postLoginActionBlock [
	^ postLoginActionBlock
]

{ #category : #accessing }
HeimdallLoginComponent >> postLoginActionBlock: anObject [
	postLoginActionBlock := anObject
]

{ #category : #accessing }
HeimdallLoginComponent >> postLoginActionOn: user [
	self postLoginActionBlock ifNotNil: [ :bl | bl value: user ]
]

{ #category : #rendering }
HeimdallLoginComponent >> renderContentOn: html [
	html div
		class: 'heimdall';
		with: [ self session loggable
				ifNil: [ self renderFormOn: html ]
				ifNotNil: [ html
						heading: (self translate: 'Welcome, ' french: 'Bienvenue ') , self session loggable login.
					self renderLogoutAnchorOn: html ] ]
]

{ #category : #rendering }
HeimdallLoginComponent >> renderFormOn: html [
	html form
		class: 'loginForm';
		with: [ 
					self
						renderUserOn: html;
						renderPasswordOn: html;
						renderWarningOn: html;
						renderSubmitOn: html;
						warning: nil ]
]

{ #category : #rendering }
HeimdallLoginComponent >> renderLogoutAnchorOn: html [
	html anchor
		callback: [ self session disconnect ];
		with: (self translate: 'Logout ' french: 'Déconnexion') , self session loggable login
]

{ #category : #rendering }
HeimdallLoginComponent >> renderPasswordOn: html [
	| htmlID |
	html
		div: [ html label
				for: (htmlID := html nextId);
				with: (self translate: 'Password:' french: 'Mot de passe:').
			html passwordInput
				id: htmlID;
				value: password;
				callback: [ :value | password := value ] ]
]

{ #category : #fields }
HeimdallLoginComponent >> renderSubmitOn: html [
	html
		div: [ html submitButton
				callback: [ self login ];
				with: (self translate: 'Login' french: 'Connection') ]
]

{ #category : #rendering }
HeimdallLoginComponent >> renderUserOn: html [
	| htmlID |
	html
		div: [ html label
				for: (htmlID := html nextId);
				with: (self translate: 'User:' french: 'Utilisateur').
			html textInput
				id: htmlID;
				value: userID;
				callback: [ :value | userID := value ];
				script: 'document.getElementById(' , htmlID printString , ').focus()' ]
]

{ #category : #rendering }
HeimdallLoginComponent >> renderWarningOn: html [
	self warning
		ifNil: [ 
			html div
				class: 'instruction';
				with: [ html span: self messageIfNoWarning ] ]
		ifNotNil: [ :warn | 
			html div
				class: #loginFailure;
				with: warn ]
]

{ #category : #accessing }
HeimdallLoginComponent >> warning [
	^ warning
]

{ #category : #accessing }
HeimdallLoginComponent >> warning: aString [
	warning := aString
]
