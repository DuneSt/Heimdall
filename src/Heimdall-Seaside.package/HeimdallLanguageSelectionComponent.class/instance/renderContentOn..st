rendering
renderContentOn: html
	html div
		class: 'languageComponent';
		with: [ 
					html anchor
						callback: [ self session language: #french ];
						with: [ 
									html image
										class: 'fr';
										resourceUrl: (HeimdallFileLibrary urlOf: 'frPng') asString ].
					html space.
					html anchor
						callback: [ self session language: #english ];
						with: [ 
									html image
										class: 'en';
										resourceUrl: (HeimdallFileLibrary urlOf: 'ukPng') asString ] ]