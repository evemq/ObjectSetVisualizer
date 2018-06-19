as yet unclassified
exampleLinkedList2
"Add all the elements and links from the linkedList with buttons"
| list viewer | 
	list:= LinkedList new.

	list add: Color blue.
	list add: Color red.
	list add: Color green.
	
	viewer := self new.
	viewer addObject:list.
	
	viewer render.
	
	^viewer