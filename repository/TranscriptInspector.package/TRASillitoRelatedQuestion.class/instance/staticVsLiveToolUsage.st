accessing - computed
staticVsLiveToolUsage
	self questions ifEmpty: [ ^ Float infinity ].
	^ (self questions sum: #staticVsLiveToolUsage) / self questions size