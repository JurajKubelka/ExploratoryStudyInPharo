private
cellColorForSession: anAssociation count: anInteger
	^ ((anInteger / anAssociation value maxQuestionCount) * 50) asInteger