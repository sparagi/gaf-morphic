*Interaction-Widgets
possiblySuspendedEventHandler: anEventHandler
	"Install anEventHandler without changing the current suspension state."
	
	(self valueOfProperty: #suspendedEventHandler)
		ifNil: [self eventHandler: anEventHandler]
		ifNotNil: [self setProperty: #suspendedEventHandler toValue: anEventHandler].