*Interaction-Widgets
= anObject
	"Answer whether I am equivalent to anObject."

	self class = anObject class ifFalse: [^false].
	model = anObject model ifFalse: [^false].
	(label = anObject label or: [[label contents = anObject label contents] on: MessageNotUnderstood do: [false]])
		ifFalse: [^false].
	getStateSelector = anObject getStateSelector ifFalse: [^false].
	actionSelector = anObject actionSelector ifFalse: [^false].
	getLabelSelector = anObject getLabelSelector ifFalse: [^false].
	getMenuSelector = anObject getMenuSelector ifFalse: [^false].
	shortcutCharacter = anObject shortcutCharacter ifFalse: [^false].
	triggerOnMouseDown = anObject triggerOnMouseDown ifFalse: [^false].
	arguments = anObject arguments ifFalse: [^false].
	argumentsProvider = anObject argumentsProvider ifFalse: [^false].
	argumentsSelector = anObject argumentsSelector ifFalse: [^false].
	^true