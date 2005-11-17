*Interaction-Widgets
restoreSubmorphs
	"Restore my submorphs to a previously saved value."
	
	| oldSubmorphs |
	oldSubmorphs := self valueOfProperty: #savedSubmorphs ifAbsent: [nil].
	oldSubmorphs ifNotNil: [ | index |
		self removeAllMorphsIn: (submorphs difference: oldSubmorphs).
		index := 1.
		oldSubmorphs do: [:m |
			self addMorph: m asElementNumber: index.
			index := index + 1].
		self setProperty: #savedSubmorphs toValue: nil].