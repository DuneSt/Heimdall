rendering
renderUserOn: html
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