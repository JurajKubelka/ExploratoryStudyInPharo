public
parseStream: aReadStream
	| parser |
	parser := OrgParser new.
	parser nodeFactory: TRANodeFactory new.
	^ parser parse: aReadStream