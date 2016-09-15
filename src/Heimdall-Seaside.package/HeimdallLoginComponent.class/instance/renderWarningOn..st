rendering
renderWarningOn: html
	self warning
		ifNil: [ 
			html div
				class: 'instruction';
				with: [ html span: self messageIfNoWarning ] ]
		ifNotNil: [ :warn | 
			html div
				class: #loginFailure;
				with: warn ]