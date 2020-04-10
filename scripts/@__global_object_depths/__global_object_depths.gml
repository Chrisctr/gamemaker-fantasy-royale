// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -10; // oPlayer
global.__objectDepths[1] = 0; // oBaddie
global.__objectDepths[2] = 0; // oMenu
global.__objectDepths[3] = -20; // oServer
global.__objectDepths[4] = 0; // oClient
global.__objectDepths[5] = 0; // oCreateServerButton
global.__objectDepths[6] = 0; // oTextBox
global.__objectDepths[7] = -11; // oPuff
global.__objectDepths[8] = 0; // oLeftButton
global.__objectDepths[9] = 0; // oRightButton
global.__objectDepths[10] = 0; // oJumpButton


global.__objectNames[0] = "oPlayer";
global.__objectNames[1] = "oBaddie";
global.__objectNames[2] = "oMenu";
global.__objectNames[3] = "oServer";
global.__objectNames[4] = "oClient";
global.__objectNames[5] = "oCreateServerButton";
global.__objectNames[6] = "oTextBox";
global.__objectNames[7] = "oPuff";
global.__objectNames[8] = "oLeftButton";
global.__objectNames[9] = "oRightButton";
global.__objectNames[10] = "oJumpButton";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for