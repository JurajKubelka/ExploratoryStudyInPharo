accessing
contents
	sillito questions do: [ :eachQuestion | 
		self writeQuestion: eachQuestion ].
	^ self writer contents