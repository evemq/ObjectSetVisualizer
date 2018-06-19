rendering
morphsReduced: aCollectionOfMorphs
	" morph representation shown reduced, only first and last element is shown "
	|morphGroup |
	morphGroup := RTGroup new.
	
	morphGroup 
		add: (aCollectionOfMorphs at: 1);
		add: (self viewer labelName:'. . . . . . . . . ');
		add: (aCollectionOfMorphs at: (aCollectionOfMorphs size)).
	^ morphGroup
	