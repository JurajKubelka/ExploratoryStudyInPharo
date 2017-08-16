installation
installForPharo40On: spec

	spec for: #'pharo4.x'
		do: [ 

			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/RobertoMinelli/DevFlow/main'.
			
			spec package: 'DevFlow-Extensions40'.
			spec package: 'DevFlow-Extensions40+'.
			spec group: 'DevFlow-Extensions' with: #('DevFlow-Extensions40' 'DevFlow-Extensions40+')
		]