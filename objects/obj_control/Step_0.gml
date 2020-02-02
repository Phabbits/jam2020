/// @description Iterate

if not instance_exists(obj_train) {
	instance_create_layer(0,0,"Instances",obj_score_control)
	instance_create_layer(290,483,"Instances_1",obj_quit_btn)
	instance_destroy(obj_cracks)
	instance_destroy(obj_score)
	instance_destroy(obj_repairman)
	instance_destroy()
}