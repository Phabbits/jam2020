/// @function scr_generate_map()
/// @description Generates the map
// Returns null

var w = room_width
var h = room_height
var s = 32

for (var xx = s/2; xx < w; xx += s){
	for (var yy = s/2; yy < h; yy += s){
		if not position_meeting (xx, yy, obj_track) {
			with instance_create_layer(xx, yy, "Instances", obj_track) {
				image_index = irandom (5);
			}
		}
	}
}