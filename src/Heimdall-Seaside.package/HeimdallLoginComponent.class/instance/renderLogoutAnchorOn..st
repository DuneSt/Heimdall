rendering
renderLogoutAnchorOn: html
	html anchor
		callback: [ self session loggable: nil ];
		with: 'Logout ' , self session loggable login