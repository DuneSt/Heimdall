accessing
messageIfNoWarning
	self session loggable notNil
		ifTrue: [ ^ (self translate: 'Logged in as ' french: 'Connecté en tant que ')
				, self session loggable login ].
	(userID isNil or: [ userID isEmpty ])
		ifTrue: [ ^ self
				translate: 'Please enter User ID and Password'
				french: 'Merci d''entrer votre pseudo d''utilisateur et votre mot de passe' ].
	^ self translate: 'Login failed!' french: 'Echec de la connexion'