/// @function scr_generate_map()
/// @description Generates the map
// Returns null

var w = room_width - 32
var h = room_height - 32
var s = 32

for (var xx = 32 + s/2; xx < w; xx += s){
	for (var yy = 32 + s/2; yy < h; yy += s){
		if not position_meeting (xx, yy, obj_track) {
			with instance_create_layer(xx, yy, "lay_base", obj_track) {
				image_index = irandom (5);
			}
		}
	}
}