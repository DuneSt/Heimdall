rendering
renderLogoutAnchorOn: html
	html anchor
		callback: [ self session disconnect ];
		with: 'Logout ' , self session loggable login