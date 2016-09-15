rendering
renderPasswordOn: html
	| htmlID |
	html
		div: [ 
			html label
				for: (htmlID := html nextId);
				with: 'Password:'.
			html passwordInput
				id: htmlID;
				value: password;
				callback: [ :value | password := value ];
				yourself ]