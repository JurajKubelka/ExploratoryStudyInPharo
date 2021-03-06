accessing
questions
	^ { 
	TRAQuestion new shortName: 1; longName: 'Which type represents this domain concept or this UI element or action?'; group: 'Finding Focus Points (FFP)'; groupNumber: 1.
	TRAQuestion new shortName: 2; longName: 'Where in the code is the text in this error message or UI element?'; group: 'Finding Focus Points (FFP)'; groupNumber: 1.
	TRAQuestion new shortName: 3; longName: 'Where is there any code involved in the implementation of this behavior?'; group: 'Finding Focus Points (FFP)'; groupNumber: 1.
	TRAQuestion new shortName: 4; longName: 'Is there a precedent or exemplar for this?'; group: 'Finding Focus Points (FFP)'; groupNumber: 1.
	TRAQuestion new shortName: 5; longName: 'Is there an entity named something like this in that unit (project, package, or class, say)?'; group: 'Finding Focus Points (FFP)'; groupNumber: 1.

	TRAQuestion new shortName: 6; longName: 'What are the parts of this type?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: 7; longName: 'Which types is this type a part of?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: 8; longName: 'Where does this type fit in the type hierarchy?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: 9; longName: 'Does this type have any siblings in the type hierarchy?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: 10; longName: 'Where is this field declared in the type hierarchy?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: 11; longName: 'Who implements this interface or these abstract methods?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: #e1; longName: 'Where is the method defined in the type hierarchy?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: #e2; longName: 'What are the correct arguments names to this method?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.
	TRAQuestion new shortName: #e3; longName: 'Which abstract methods should be implemented to this type?'; group: 'Expanding Focus Points (EFP1)'; groupNumber: 2.

	TRAQuestion new shortName: 12; longName: 'Where is this method called or type referenced?'; group: 'Expanding Focus Points (EFP2)'; groupNumber: 2.
	TRAQuestion new shortName: 13; longName: 'When during the execution is this method called?'; group: 'Expanding Focus Points (EFP2)'; groupNumber: 2.
	TRAQuestion new shortName: 14; longName: 'Where are instances of this class created?'; group: 'Expanding Focus Points (EFP2)'; groupNumber: 2.
	TRAQuestion new shortName: 15; longName: 'Where is this variable or data structure being accessed?'; group: 'Expanding Focus Points (EFP2)'; groupNumber: 2.
	TRAQuestion new shortName: 16; longName: 'What data can we access from this object?'; group: 'Expanding Focus Points (EFP2)'; groupNumber: 2.

	TRAQuestion new shortName: 17; longName: 'What does the declaration or definition of this look like?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.
	TRAQuestion new shortName: 18; longName: 'What are the arguments to this function?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.
	TRAQuestion new shortName: 19; longName: 'What are the values of these arguments at runtime?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.
	TRAQuestion new shortName: 20; longName: 'What data is being modified in this code?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.
	TRAQuestion new shortName: #e4; longName: 'What method implementation corresponds to my question?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.
	TRAQuestion new shortName: #e5; longName: 'What is the variable  type or what is the method''s return type?'; group: 'Expanding Focus Points (EFP3)'; groupNumber: 2.

	TRAQuestion new shortName: 21; longName: 'How are instances of these types created and assembled?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 22; longName: 'How are these types or objects related? (whole-part)'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 23; longName: 'How is this feature or concern (object ownership, UI control, etc.) implemented?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 24; longName: 'What in this structure distinguishes these cases?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 25; longName: 'What is the behavior that these types provide together and how is it distributed over the types?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 26; longName: 'What is the `correct'' way to use or access this data structure?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.
	TRAQuestion new shortName: 27; longName: 'How does this data structure look at runtime?'; group: 'Understanding a Subgraph (US1)'; groupNumber: 3.

	TRAQuestion new shortName: 28; longName: 'How can data be passed to (or accessed at) this point in the code?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: 29; longName: 'How is control getting (from here to) here?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: 30; longName: 'Why is not control reaching this point in the code?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: 31; longName: 'Which execution path is being taken in this case?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: 32; longName: 'Under what circumstances is this method called or exception thrown?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: 33; longName: 'What parts of this data structure are accessed in this code?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.
	TRAQuestion new shortName: #e8; longName: 'What does the failure look like?'; group: 'Understanding a Subgraph (US2)'; groupNumber: 3.

	TRAQuestion new shortName: 35; longName: 'What are the differences between these files or types?'; group: 'Questions over Groups of Subgraphs (QGS1)'; groupNumber: 4.
	TRAQuestion new shortName: 34; longName: 'How does the system behavior vary over these types or cases?'; group: 'Questions over Groups of Subgraphs (QGS1)'; groupNumber: 4.
	TRAQuestion new shortName: 36; longName: 'What is the difference between these similar parts of the code (e.g., between sets of methods)?'; group: 'Questions over Groups of Subgraphs (QGS1)'; groupNumber: 4.
	TRAQuestion new shortName: 37; longName: 'What is the mapping between these UI types and these model types?'; group: 'Questions over Groups of Subgraphs (QGS1)'; groupNumber: 4.

	TRAQuestion new shortName: 38; longName: 'Where should this branch be inserted or how should this case be handled?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 39; longName: 'Where in the UI should this functionality be added?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 40; longName: 'To move this feature into this code, what else needs to be moved?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 41; longName: 'How can we know that this object has been created and initialized correctly?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 42; longName: 'What will be (or has been) the direct impact of this change?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 43; longName: 'What will the total impact of this change be?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: 44; longName: 'Will this completely solve the problem or provide the enhancement?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: #e6; longName: 'Is this entity or feature tested?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
	TRAQuestion new shortName: #e7; longName: 'Do the test cases pass?'; group: 'Questions over Groups of Subgraphs (QGS2)'; groupNumber: 4.
}