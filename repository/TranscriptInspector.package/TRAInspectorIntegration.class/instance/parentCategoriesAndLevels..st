categories with one-level sub-categories
parentCategoriesAndLevels: aNode
	"| Parent Category Level | Parent Category | Child Category | Questions |"
	^ (self questionCategoriesAndLevels: aNode) groupedBy: [ :eachLine | 
		Array with: (eachLine at: 1) with: (eachLine at: 2) ]