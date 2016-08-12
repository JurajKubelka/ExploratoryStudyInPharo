accessing
count
	self groups ifEmpty: [ ^ 0 ].
	^ self groups sum: #count