subgroups
contentInstructionsCustomizeNode: aClass
" content which is displayed in playground as an instruction for node customization "
^('"The following instruction guides the user through the creation of pragmas to customize nodes in the ObjectSetViewer.

So far *ThesisEve has been added as an extension to the class, now one can add methods with pragmas or other content in that package with the following tutorial

- Depending on which pragma or method should be created certain parts of the code need to be commented out.

- Also the string ''enterMethodNameHere'' needs to be replaced with the method name one wants.

- The second argument of the method compile is the code content, so the code can be written in there initialy right away or the easier way would be to run the given code and then open the browser on the created function and alter it there.

The pragmas and function creation will now be described in the following order:
1. <objectGraphMorphVisualization> which are pragmas for morphs
2. <objectRTViewVisualization> which are pragmas for RTObjects
3. <objectInstanceVariables> which are pragmas for the instanceVariables not to show in view
4. #subElements: is a utility method which contains the subelements of an object
5. #argumentsNameButtons: is a utility method which contains a template to collect the arguments needed for buttons (more detailed description later)
6. As an individual example for how unique utility methods can be created, the method LinkedList>>#osvMorphsLinkedList will be explained in detail 

At the end of the pragme/method explanation an example will be added which when the code is uncommented can be directly inspected in the browser"

"1.<objectGraphMorphVisualization> : Pragmas for morphs
The method should return a morph of the instance of the class which will then be rendered as a TrachelShape and inserted at the bottom of the object node in the view"

"Example method with a morph:"
	"Nautilus openOnMethod: Color>>#asGraphMorph"
',
aClass asString, ' compile:(''enterMethodNameHere'',''<objectGraphMorphVisualization>'') classified: ''*ThesisEve''.

"2.<objectRTViewVisualization> : Pragmas for RTObjects 
The method should return an RTObject such as an RTGroup, RTLabel, RTBox for example, it is then also inserted at the bottom of the object node

The method is given our ObjectSetViewer as an argument, which then can be used for method calls.
asOSV is an instance of an ObjectSetViewer which also can be used for method calls(see examples).

In the package ThesisEve there are methods as templates which can be used to create RTObjects:
- ObjectSetViewer>>#labelName:
- ObjectVisualization>>#addAndRemoveButtons
- ObjectVisualization>>buttonsObjectHeader
- ObjectVisualization>>button:withPopup:withClickAction:object:

Any other RTObject can of course also be used for node custumization here "

"Example methods with an RTObject:"
	"Nautilus openOnMethod: LinkedList>>#osvRenderMorphsLinkedList:"
	"Nautilus openOnMethod: LinkedList>>#osvRenderLabelValueLinks:"
	"Nautilus openOnMethod: RBProgramNode>>#osvRenderLabelSubgraph:"
	"Nautilus openOnMethod: RBProgramNode>>#osvRenderLabelChildren:"
	"Nautilus openOnMethod: PPParser>>#asRTViewVisualization"
',
aClass asString, ' compile:(''enterMethodNameHere:aView'',''<objectRTViewVisualization> | asOSV | asOSV := ObjectSetViewer new asObjectVisualization: self view: aView.'') classified: ''*ThesisEve''.

"3.<objectInstanceVariables>: Pragmas to collect instanceVariables
The method should return an OrderedCollection containing the names of the instancevariables of the object that we do not want in our object node

This serves the purpose of maintaining a clearer overview and allows the user to only display information that is relevent for them"

"Example method with a collection of instanceVariables:"
	"Nautilus openOnMethod: RBProgramNode>>#instanceVariablesNotToShowInView"
',
aClass asString, ' compile:(''enterMethodNameHere'',''<objectInstanceVariables> | instanceVariables | instanceVariables:= OrderedCollection new.^ instanceVariables'') classified: ''*ThesisEve''.

"4. #subElements, Utility method to collect the subElements of the class
The method should return an ordered collection containing ordered collections containing the subelements of the class. 
With subelements objects such as the children/valueLinks/elemtents are meant. There are not always subelements for a class but in case there are they can be added in this utility function in order to make the interaction with the object in the class more useful

The method is normally accessed from another utility functions containing the arguments for buttons (shown below under 5."

"Example methods with subelements:"
	"Nautilus openOnMethod: LinkedList>>#subElements"
	"Nautilus openOnMethod: RBProgramNode>>#subElements"
', 	
aClass asString, ' compile:(''subElements'',''| subElements | subElements := OrderedCollection new. ^ subElements'') classified: ''*ThesisEve''.	
	
"5. #argumentsNameButtons, Utility method to collect button arguments
The method should return an ordered collection with exactly 3 elements which contain the following information:
1. The popup text for the right button
2. The popup for the remove button
3. The subelements to added/removed or interacted with elsewise. These subelements should be defined in another utility method called subElements. 

The method is only a utility function which uses the 3 arguments stated above in order to then use the arguments to call the function #addAndRemoveButtons: which returns two RTObject which are buttons in the view"

"Example methods with arguments for the buttons:"
	"Nautilus openOnMethod: LinkedList>>#argumentsElementsButtons"
	"Nautilus openOnMethod: LinkedList>>#argumentsVLButtons"
	"Nautilus openOnMethod: RBProgramNode>>#argumentsSubgraphButtons"
	"Nautilus openOnMethod: RBProgramNode>>#argumentsChildrenButtons"
',
aClass asString, ' compile:(''enterMethodNameHere'',''| arguments | arguments := OrderedCollection new. arguments 
		"add: Popup for right button;"
		"add: Popup for remove button;"
		"add: Subelements to be added/removed".
		^ arguments'') classified: ''*ThesisEve''.
		
"6. LinkedList>>#osvMorphsLinkedList: explained in detail"')