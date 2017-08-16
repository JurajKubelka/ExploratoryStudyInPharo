installation
installForPharo30On: spec

	spec for: #'pharo3.x'
		do: [ 

			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/RobertoMinelli/DevFlow/main'.
			
			spec group: 'DevFlow-Extensions' with: 'DevFlow-Extensions30'.
	].