/// @function scr_generate_map()
/// @description Generates the map
// Returns null

var w = room_width()
var h = room_height()
var s = 32

for (var xx = s/2; xx < w/s - s; xx += s){
	for (var yy = s/2; yy < h/s - s; yy += s){
		with (instance_create_layer(xx, yy, "layer_instances", obj_track)) {
			//Set type
		}
	}
}