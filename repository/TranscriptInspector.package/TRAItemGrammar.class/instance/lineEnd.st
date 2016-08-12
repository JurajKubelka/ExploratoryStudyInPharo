accessing
lineEnd
	^ #newline asParser / (#eof asParser map: [ :val | nil ])