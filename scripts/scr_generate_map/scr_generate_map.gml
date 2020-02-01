/// @function scr_generate_map()
/// @description Generates the map
// Returns null

var w = room_width
var h = room_height
var s = 32

for (var xx = s/2; xx < w; xx += s){
	show_debug_message("hey")
	for (var yy = s/2; yy < h; yy += s){
		with (instance_create_layer(xx, yy, "Instances", obj_track)) {
			//Track direction set in obj_track
			//image_index = irandom(image_number)
			show_debug_message("hey")
		}
	}
}