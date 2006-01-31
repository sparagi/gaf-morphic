event handling
currentStateChanged
	"I just changed my state -- update my appearance and event 
	handling to match."
	| eventHandler |
	currentState := self currentState.
	self
		color: (colors
				at: currentState
				ifAbsent: [self defaultColor]).
	eventHandler := eventHandlers
				at: currentState
				ifAbsent: [].
	eventHandler
		ifNotNil: [self possiblySuspendedEventHandler: eventHandler]