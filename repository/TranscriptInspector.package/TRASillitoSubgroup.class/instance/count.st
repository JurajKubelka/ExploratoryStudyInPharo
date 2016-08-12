accessing
count
	self questions ifEmpty: [ ^ 0 ].
	^ self questions sum: #count