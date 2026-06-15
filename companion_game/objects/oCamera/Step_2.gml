


if(target != noone){
	
	
	
	
	var cam_x = camera_get_view_x(camera) - (camera_width * zoom) / 2;
	var cam_y = camera_get_view_y(camera) - (camera_height * zoom) /2;

	
	var c_x = lerp(cam_x,target.x,camera_move_speed);
	var c_y = lerp(cam_y,target.y,camera_move_speed);
	
	c_x = clamp(c_x, 0, room_width);
	c_y = clamp(c_y, 0, room_height);
	
	camera_set_view_pos(camera,c_x ,c_y)
}



