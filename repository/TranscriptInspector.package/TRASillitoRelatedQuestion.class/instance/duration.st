accessing - computed
duration
	self questions ifEmpty: [ ^ Duration new ].
	^ self questions sum: #duration