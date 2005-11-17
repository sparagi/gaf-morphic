event handling
currentStateChanged
	"I just changed my state -- update my appearance and event  
	handling to match."
	| eventHandler |
	self
		color: (colors
				at: self currentState
				ifAbsent: [self defaultColor]).
	eventHandler := eventHandlers
				at: self currentState
				ifAbsent: [].
	eventHandler
		ifNotNil: [self possiblySuspendedEventHandler: eventHandler]