/// @description
show_debug_message ("escape")
if from = 0 and to = 1 {
path_start (pth_turn, move_speed, path_action_stop, 0)
//path_mirror (pth_turn)
}
if from = 0 and to = 2 {
//path_start (pth_straight, move_speed, path_action_stop, 0)
path_orientation = 90
}
if from = 0 and to = 3 {
path_start (pth_turn, move_speed, path_action_stop, 0)
path_orientation = 270
}
if from = 1 and to = 0 {
path_start (pth_turn, move_speed, path_action_stop, 0)
path_orientation = 90
}
if from = 1 and to = 2 {
path_start (pth_turn, move_speed, path_action_stop, 0)
//path_mirror (pth_turn)
}
if from = 1 and to = 3 {
path_start (pth_straight, move_speed, path_action_stop, 0)
}
if from = 2 and to = 0 {
path_start (pth_straight, move_speed, path_action_stop, 0)
path_orientation = 90
}
if from = 2 and to = 1 {
path_start (pth_turn, move_speed, path_action_stop, 0)
//path_mirror (pth_turn)
}
if from = 2 and to = 3 {
path_start (pth_straight, move_speed, path_action_stop, 0)
}
if from = 3 and to = 0 {
path_start (pth_turn, move_speed, path_action_stop, 0)
path_orientation = 90
}
if from = 3 and to = 1 {
path_start (pth_turn, move_speed, path_action_stop, 0)
//path_mirror (pth_turn)
}
if from = 3 and to = 2 {
path_start (pth_straight, move_speed, path_action_stop, 0)
}