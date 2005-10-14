instance creation
colors: aDictionary 
	"Answer a new instance of myself, initialized with the given  
	stateSymbol to color mapping."
	^(self new) colors: aDictionary;
		 yourself