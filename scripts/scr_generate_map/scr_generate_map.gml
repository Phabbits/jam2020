/// @function scr_generate_map()
/// @description Generates the map
// Returns null

var w = room_width - 32
var h = room_height - 64
var s = 32

for (var xx = 32 + s/2; xx < w; xx += s){
	for (var yy = 32 + s/2; yy < h; yy += s){
		var i = irandom(20)
		if not position_meeting (xx, yy, obj_track) {
			if i <= 19{
				with instance_create_layer(xx, yy, "lay_base", obj_track) {
					image_index = irandom (5);
				}
			}else{
				if irandom (20) > 1{
					with instance_create_layer(xx, yy, "lay_base", obj_rock){
						image_index = 0
					}
				}else{
					with instance_create_layer(xx,yy,"lay_base", obj_depo){
						image_index = 0
						with instance_place(xx+32,yy,obj_track){
							instance_destroy(obj_track)	
						}
					}
				}
			}
		}
	}
}