testing
isDynamicTool
	^ self contents = 'dynamic-tool' or: [ 
		self contents = 'testing-behavior' or: [ 
			self contents = 'example-tool' ] ]