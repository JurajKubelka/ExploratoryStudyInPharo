initialization
sillitoForSession: anInteger 
	self subgroups do: [ :eachSubGroup | eachSubGroup sillitoForSession: anInteger ]