security
hydePassword: aPassword
	self flag: #improve.	"here must be defined a strong one-way transformation function to hyde the password because hash is too fragile"
	^ aPassword hash