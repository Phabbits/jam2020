/// @description Insert description here
// You can write your code in this editor
state = STATE_ONLINE; //current game state
state_queue = ds_stack_create()//holds states in order visited for universal back button
global.Menu = self

//set fullscreen
//window_set_fullscreen(true)

players = ds_list_create();
readys = ds_list_create();