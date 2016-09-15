rendering
renderContentOn: html
	html div
		class: 'languageComponent';
		with: [ 
					html anchor
						callback: [ self session language: #french ];
						with: [ self renderFrenchFlagOn: html ].
					html space.
					html anchor
						callback: [ self session language: #english ];
						with: [ self renderEnglishFlagOn: html ] ]