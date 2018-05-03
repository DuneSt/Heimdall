rendering
renderPasswordOn: html
	| htmlID |
	html
		div: [ html label
				for: (htmlID := html nextId);
				with: (self translate: 'Password:' french: 'Mot de passe:').
			html passwordInput
				id: htmlID;
				value: password;
				callback: [ :value | password := value ] ]