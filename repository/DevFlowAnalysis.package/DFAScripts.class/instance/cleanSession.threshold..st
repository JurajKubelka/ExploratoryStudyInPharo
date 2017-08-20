cleaning
cleanSession: aSession threshold: aDateTime
	| max |
	aSession subsessions do: [ :each | self cleanSubsession: each threshold: aDateTime ].
	max := aSession subsessions detectMax: #endTime.
	aSession endTime: max endTime.
	aSession
		windows: (self rejectWindows: aSession windows threshold: aDateTime).
	self cleanWindows: aSession windows threshold: aDateTime