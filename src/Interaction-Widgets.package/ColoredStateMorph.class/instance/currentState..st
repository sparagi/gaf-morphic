accessing
currentState: aSymbol 
	(colors keys includes: aSymbol)
		ifFalse: [aSymbol
				ifNotNil: [self error: 'no such state']].
	currentState := aSymbol.
	self update: #currentState