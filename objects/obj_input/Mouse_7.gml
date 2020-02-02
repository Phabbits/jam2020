/// @description Set string
switch (action){
	case "text":
		keyboard_string = text;
		break;
	case "host":
		//room_goto_next()
		global.Networking.alarm[1] = 1;
		break;
}

// deselect all other boxes
with (obj_input) selected = false;

// select current box
selected = true;
