cleaning
cleanSession: aSession
	| max |
	aSession subsessions do: [ :each | self cleanSubsession: each ].
	max := aSession subsessions detectMax: #endTime.
	"remove windows > 2015"
	aSession endTime: max endTime.