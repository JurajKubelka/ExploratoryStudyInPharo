*DevFlowAnalysis
printSummary
	"Print summary about used window."
	^ String streamContents: [ :aStream | 
		self printSummaryOn: aStream ]