rendering
renderContentOn: html
	html div
		class: 'heimdall';
		with: [ 
					self session loggable
						ifNil: [ self renderFormOn: html ]
						ifNotNil: [ 
							html heading: 'Welcome, ' , self session loggable login.
							self renderLogoutAnchorOn: html ] ]