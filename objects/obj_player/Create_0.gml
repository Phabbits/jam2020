/// @description Initialize variables

//Score
game_score = 0

//Repair queue
repair_list = ds_list_create()

//Create objects
Train = instance_create_layer(x, y, "Instances", obj_train)
Train.player = self;
Repair = instance_create_layer(x, y, "Instances", obj_repairman)
Repair.player = self;

trains = 3