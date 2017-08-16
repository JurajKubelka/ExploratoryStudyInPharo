baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'CustomDevFlow' with: [
				spec
					repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository' ].
		spec package: 'DevFlowAnalysis' with: [
				spec requires: #( 'CustomDevFlow' ). ]. ].
