/// @description  scr_state_switch(from, to)
/// @param from
/// @param  to
/*
/ Description: switches the current menu state to the new state
/ Script Call: scr_state_switch(from, to)
/ Parameters : from - id of state to switch from
/              to - id of state to switch to
/ Return     : void
*/

// set input
var from = argument0;
var to = argument1;

// switch menu state
with (global.Menu) {
	//check if going back one state
	if ds_stack_top(state_queue) = to
		ds_stack_pop(state_queue)//delete last entry
	else
		ds_stack_push(state_queue, from)//add new entry
	
	//set state
	state = to;

	//switch state
    switch (from) {
        case STATE_ONLINE:
            switch (to) {
                case STATE_LOBBY:
                    room_goto_next()
                    show_debug_message(string(state))
                    break;
			}
            break;
		case STATE_LOBBY:
            switch (to) {
                case STATE_GAME:
					random_set_seed(obj_client.seeed)
                    room_goto_next()
                    show_debug_message(string(state))
                    break;
			}
            break;
        }
    }
