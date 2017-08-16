installation
installForPharo20On: spec

	spec for: #'pharo2.x'
		do: [ 

			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/RobertoMinelli/DevFlow/main'.
			
			self registerCollectionExtensionsWith: spec.
			
			spec package: 'DevFlow-UI4Pharo20'.
			spec group: 'DevFlow-Extensions' with: 'DevFlow-Extensions30'.
	].