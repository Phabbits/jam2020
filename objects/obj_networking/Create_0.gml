/// @description Initialize networking

global.Server = -1; // -1 client does not have server
global.connectip = "127.0.0.1";
global.Networking = id;
global.have_server = false;
global.ServerType = network_socket_udp;

serverlist = ds_list_create();
servernames = ds_list_create();

// Create a server and listen on our broadcast port....
broadcast_server = network_create_server(network_socket_udp, 6511, 100);
// set up menu
directIP = instance_create_layer(154+32+64, room_height-32, "Instances", obj_input);
directIP.title = "Enter Direct IP"
directIP.text = "192.168.1.1"
directIP.action = "direct"
iServerName = instance_create_layer(room_width-(200+154+32+64), room_height-32, "Instances", obj_input);
iServerName.title = "Player Name";
iServerName.text = "Newbius";

// try to load player name
//scr_load_player();

// set menu to treat game as online
global.online = true;

//Create host button
host_button = instance_create_layer(96, 832, "Instances", obj_input)
host_button.title = ""
host_button.text = "Host"
host_button.action = "host"

//Create host button
host_button = instance_create_layer(736, 832, "Instances", obj_input)
host_button.title = ""
host_button.text = "Quit"
host_button.action = "quit"

