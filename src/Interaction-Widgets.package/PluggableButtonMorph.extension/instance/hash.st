*Interaction-Widgets
hash
	"Answer my hash value."

	^(model hash bitXor: actionSelector hash) bitXor: (getLabelSelector hash bitXor: arguments hash)