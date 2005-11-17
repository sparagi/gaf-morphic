*Interaction-Widgets
containsPoint: aPoint
	"Answer whether aPoint is inside me."

	self color isTransparent 
		ifFalse: [^super containsPoint: aPoint]
		ifTrue: [
			self submorphsDo: [:m | (m containsPoint: aPoint) ifTrue: [^true]].
			^false]
