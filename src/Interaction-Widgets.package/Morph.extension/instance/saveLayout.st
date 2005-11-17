*Interaction-Widgets
saveLayout
	"Cache details of my layout so I can restore them later."

	self interestingLayoutDetails do: [:accessorSymbol | | savedSymbol |
		savedSymbol := (#saved, accessorSymbol) asSymbol.
		self setProperty: savedSymbol toValue: (self perform: accessorSymbol)].
	
	self saveSubmorphs.
		
	submorphs do: [:s |
		s saveLayout]