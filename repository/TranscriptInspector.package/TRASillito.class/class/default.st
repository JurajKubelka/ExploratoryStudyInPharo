instance creation
default
	^ self new
			addGroup: TRASillitoGroup findingFocusPoints;
			addGroup: TRASillitoGroup expandingFocusPoints;
			addGroup: TRASillitoGroup understandingSubgraph;
			addGroup: TRASillitoGroup understandingGroupsOfSubgraphs;
			yourself