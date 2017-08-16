baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/RobertoMinelli/DevFlow/main'.
		spec
			package: 'DevFlow-Meta';
			package: 'DevFlow-Core' with: [ spec requires: #('DevFlow-Meta') ];
			package: 'DevFlow-Uploader' with: [ spec requires: #('DevFlow-Core')];
			package: 'DevFlow-Server' with: [ spec requires: #('DevFlow-Core' 'Scheduler')];
			package: 'DevFlow-Utils' with: [ spec requires: #('DevFlow-Core' 'NeoJSON' 'Fuel' 'Scheduler') ];
			package: 'DevFlow-Profilers' with: [ spec requires: #('DevFlow-Core' 'Spy') ];
			package: 'DevFlow-Announcement' with: [ spec requires: #('DevFlow-Utils') ];
			package: 'DevFlow-UI' with: [ spec requires: #('DevFlow-Utils') ];
			package: 'DevFlow-View' with: [ spec requires: #('Roassal') ].

		self registerExternalDependenciesWith: spec.
		self installDevFlowExtensionsWith: spec.
		
		spec group: 'User' with: #(
			'DevFlow-Meta' 
			'DevFlow-Core'
			'DevFlow-Uploader' 
			'DevFlow-Utils' 
			'DevFlow-Profilers' 
			'DevFlow-UI' 
			'DevFlow-Announcement'
			'DevFlow-Extensions').
	
		spec group: 'default' with: #(
			'User').
	
		spec group: 'Dev' with: #(
			'User').
			
		spec group: 'Server' with: #(
			'Dev'
			'DevFlow-Server'
		).
	
		spec postLoadDoIt: #postLoadActionsFor:spec:.
	].