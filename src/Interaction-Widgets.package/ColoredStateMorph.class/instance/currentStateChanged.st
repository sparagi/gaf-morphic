event handling
currentStateChanged
	"I just changed my state -- update my appearance and event 
	handling to match."
	| cachedState eventHandler |
	cachedState := self currentState.
	self
		color: (colors
				at: cachedState
				ifAbsent: [self defaultColor]).
	eventHandler := eventHandlers
				at: cachedState
				ifAbsent: [].
	eventHandler
		ifNotNil: [self possiblySuspendedEventHandler: eventHandler]