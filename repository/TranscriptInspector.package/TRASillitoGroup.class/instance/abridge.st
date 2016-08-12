converting
abridge
	^ self class new
			codeType: self codeType;
			groupType: self groupType;
			subgroups: (self subgroups collect: #abridge);
			yourself