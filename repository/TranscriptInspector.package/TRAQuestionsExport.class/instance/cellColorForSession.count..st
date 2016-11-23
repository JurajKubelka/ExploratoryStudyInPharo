private
cellColorForSession: aTRATableColumn count: anInteger
	^ ((anInteger / aTRATableColumn maxValue) * 50) asInteger