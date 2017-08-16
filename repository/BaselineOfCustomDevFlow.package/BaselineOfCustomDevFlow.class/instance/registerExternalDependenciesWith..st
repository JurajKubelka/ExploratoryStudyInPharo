registration
registerExternalDependenciesWith: spec

	self registerSpyWith: spec.
	self registerNeoJSONWith: spec.
	self registerFuelWith: spec.
	self registerRoassalWith: spec.
	self registerSchedulerWith: spec.