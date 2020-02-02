/// @description Insert description here
// You can write your code in this editor
state = STATE_ONLINE; //current game state
state_queue = ds_stack_create()//holds states in order visited for universal back button
global.Menu = self
global.online = true

//set fullscreen
window_set_fullscreen(true)

buttons = ds_list_create(); //holds menu buttons
selected = 0; //selected button
input_buffer = 0; //small buffer to slow down gamepad input
input_buffer_max = 4;
input_freeze = 0; //small amount of time inbetween menu switches
input_freezeMax = 4;

players = ds_list_create();
readys = ds_list_create();
names = ds_list_create();

///Server
// list to hold data for different menus, lobby
server_data = ds_list_create();