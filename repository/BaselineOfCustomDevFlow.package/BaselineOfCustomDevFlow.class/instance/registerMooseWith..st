registration
registerMooseWith: spec
	spec 
		project: 'Moose' with: [
		spec
			className: 'ConfigurationOfMoose';
			file: 'ConfigurationOfMoose';
			version: #development;
			loads: #('Core' );
			repository: 'http://www.smalltalkhub.com/mc/Moose/Moose/main' ].