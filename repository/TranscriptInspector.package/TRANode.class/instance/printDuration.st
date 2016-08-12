printing
printDuration
	^ String streamContents: [ :aStream | self printTimespanOn: aStream ]