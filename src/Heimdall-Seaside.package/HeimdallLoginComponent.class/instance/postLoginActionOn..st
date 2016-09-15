accessing
postLoginActionOn: user
	self postLoginActionBlock ifNotNil: [ :bl | bl value: user ]