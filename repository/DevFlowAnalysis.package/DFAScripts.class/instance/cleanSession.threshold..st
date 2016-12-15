cleaning
cleanSession: aSession threshold: aDateTime
	| max |
	aSession subsessions do: [ :each | self cleanSubsession: each threshold: aDateTime ].
	max := aSession subsessions detectMax: #endTime.
	"remove windows > 2015"
	aSession endTime: max endTime.