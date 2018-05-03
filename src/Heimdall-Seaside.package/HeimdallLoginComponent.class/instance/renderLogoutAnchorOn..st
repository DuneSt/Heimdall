rendering
renderLogoutAnchorOn: html
	html anchor
		callback: [ self session disconnect ];
		with: (self translate: 'Logout ' french: 'Déconnexion') , self session loggable login