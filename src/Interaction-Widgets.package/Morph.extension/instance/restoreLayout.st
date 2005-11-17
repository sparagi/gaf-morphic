*Interaction-Widgets
restoreLayout
	"Restore details of my layout from my cache."
	
	self interestingLayoutDetails do: [:accessorSymbol | | savedSymbol setSymbol oldValue |
		savedSymbol := (#saved, accessorSymbol) asSymbol.
		setSymbol := (accessorSymbol, ':') asSymbol.
		oldValue := self valueOfProperty: savedSymbol ifAbsent: [nil].
		oldValue ifNotNil: [
			self perform: setSymbol with: oldValue.
			self setProperty: savedSymbol toValue: nil]].
	
	self restoreSubmorphs.
	
	submorphs do: [:s |
		s restoreLayout]
	
	