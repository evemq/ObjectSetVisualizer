adding
addObject: anObject
	" add object as new ObjectVisualization if it not already in our view " 
	(self hasObject: anObject) 
		ifFalse: [ self objectVisualizations add: 
			(OSVObsoleteObjectVisualization new 
				target: anObject; 
				viewer: self; 
				min: false; 
				sharedBy: 0; 
				distanceToNextAlongX: 0;
				yourself) ]
		