private
defineMonticelloBrowser: aDFProfiledWindow 
	aDFProfiledWindow isMonticelloBrowser ifTrue: [ self define: aDFProfiledWindow as: DFAWTMonticelloBrowser default ]