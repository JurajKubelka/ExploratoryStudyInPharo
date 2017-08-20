cleaning
cleanWindows: aCollection threshold: aYear 
	aCollection do: [ :eachWindow | 
		self cleanWindow: eachWindow threshold: aYear ]