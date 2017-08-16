registration
registerSpyWith: spec
	spec
		project: 'Spy' with: [
		spec
			className: 'ConfigurationOfSpy';
			version: '2.1-baseline';
			loads: #('Core');
			file: 'ConfigurationOfSpy';
			repository: 'http://smalltalkhub.com/mc/ObjectProfile/Spy/main' ]