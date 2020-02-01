/// @description

type = image_number;
broken = false;
path = [0, 0, 0, 0];

image_index = irandom (5);
image_speed = 0;

switch (image_index) {
	case 0:
		path = [1, 0, 1, 0];
		break;
	case 1:
		path = [0, 1, 0, 1];
		break;
	case 2:
		path = [1, 1, 0, 0];
		break;
	case 3:
		path = [0, 1, 1, 0];
		break;
	case 4:
		path = [0, 0, 1, 1];
		break;
	case 5:
		path = [1, 0, 0, 1];
		break;
}
