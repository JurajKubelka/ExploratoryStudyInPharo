accessing
itemParser
	^ itemParser ifNil: [ itemParser := TRAItemParser new ]