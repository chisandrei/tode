matching
copyInContext: aDictionary 
	^ self class new
		selectorParts: (self selectorParts collect: [ :each | each copy removePositions ]);
		arguments: (self arguments collect: [ :each | each copyInContext: aDictionary ]);
		yourself