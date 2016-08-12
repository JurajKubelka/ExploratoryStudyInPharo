accessing - computed
staticVsLiveToolUsage
	self timespan ifNil: [ ^ Float infinity ].
	^ self sessionHeading staticVsLiveToolUsageFrom: self start to: self end