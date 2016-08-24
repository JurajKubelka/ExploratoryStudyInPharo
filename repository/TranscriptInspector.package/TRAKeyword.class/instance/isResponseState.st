testing
isResponseState
	^ self isAnsweredQuestion or: [ 
		self isUnansweredQuestion or: [ 
			self isAbandonedQuestion or: [ 
				self isUnknownResponseState ] ] ]