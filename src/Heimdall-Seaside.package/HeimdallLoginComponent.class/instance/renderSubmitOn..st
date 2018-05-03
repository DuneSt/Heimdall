fields
renderSubmitOn: html
	html
		div: [ html submitButton
				callback: [ self login ];
				with: (self translate: 'Login' french: 'Connection') ]