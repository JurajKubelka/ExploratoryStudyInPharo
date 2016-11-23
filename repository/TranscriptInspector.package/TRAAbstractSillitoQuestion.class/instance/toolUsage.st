accessing
toolUsage
	^ toolUsage ifNil: [ toolUsage := self newToolUsage ]