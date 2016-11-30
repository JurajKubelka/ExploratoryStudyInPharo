accessing
toolUsage
	"Tool usage reported by Sillito."
	^ toolUsage ifNil: [ toolUsage := self newToolUsage ]