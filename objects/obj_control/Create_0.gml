/// @description

//Generate the map
scr_generate_map()

//Generate player
instance_create_layer(room_width/2, 32/2, "Instances", obj_player)

//Break tile timer
break_buffer = 60
alarm[0] = irandom(break_buffer)

//Coin generator
coin_buffer = 120
alarm[1] = irandom(coin_buffer)