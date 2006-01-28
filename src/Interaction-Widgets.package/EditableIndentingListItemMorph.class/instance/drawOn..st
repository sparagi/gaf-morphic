drawing
drawOn: aCanvas 
	| tRect sRect columnRect columnScanner columnData columnLeft colorToUse |
	tRect := self toggleRectangle.
	sRect := bounds withLeft: tRect right + 4.
	self drawToggleOn: aCanvas in: tRect.
	colorToUse := complexContents preferredColor
				ifNil: [color].
	(container columns isNil
			or: [(contents asString indexOf: Character tab)
					= 0])
		ifTrue: [aCanvas
				drawString: contents asString
				in: sRect
				font: self fontToUse
				color: colorToUse]
		ifFalse: [columnLeft := sRect left.
			columnScanner := ReadStream on: contents asString.
			container columns
				do: [:width | 
					columnRect := columnLeft @ sRect top extent: width @ sRect height.
					columnData := columnScanner upTo: Character tab.
					columnData isEmpty
						ifFalse: [aCanvas
								drawString: columnData
								in: columnRect
								font: self fontToUse
								color: colorToUse].
					columnLeft := columnRect right + 5]]