accessing
contents
	sillito questions do: [ :eachQuestion | 
		self writeLongQuestion: eachQuestion ].
	self writer lineSeparator; lineSeparator.
	sillito questions do: [ :eachQuestion | 
		self writeShortQuestion: eachQuestion ].
	self writer lineSeparator; emacsLaTeXConfiguration.
	^ self writer contents