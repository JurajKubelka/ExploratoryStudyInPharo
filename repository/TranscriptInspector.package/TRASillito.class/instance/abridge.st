converting
abridge
	^ self class new
			groups: (self groups collect: #abridge);
			yourself