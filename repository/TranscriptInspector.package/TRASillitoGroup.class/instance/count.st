accessing
count
	self subgroups ifEmpty: [ ^ 0 ].
	^ self subgroups sum: #count