baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/JurajKubelka/ExploratoryStudyInPharo/main/'.
		spec project: 'DevFlow' with: [
				spec
					className: #ConfigurationOfDevFlow;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/RobertoMinelli/DevFlow/main/' ].
		spec package: 'DevFlowAnalysis' with: [
				spec requires: #('DevFlow' ). ]. ].
