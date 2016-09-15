rendering
renderEnglishFlagOn: html
	^ html image
		class: 'en';
		resourceUrl: self urlOfEnFlag