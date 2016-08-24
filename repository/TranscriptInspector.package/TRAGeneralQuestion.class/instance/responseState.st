accessing
responseState
	^ (self parent keywords select: #isResponseState)
			ifEmpty: [ TRAUndefinedResponse new question: self; yourself ]
			ifNotEmpty: [ :collection |
				collection size > 1
					ifTrue: [ TRAMultiResponse new question: self; responses: collection; yourself ]
					ifFalse: [ TRAOneResponse new question: self; responses: collection; yourself ] ]