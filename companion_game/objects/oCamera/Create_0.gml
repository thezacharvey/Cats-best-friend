
target = noone 
// uncomment this to follow oPlayer obj
//target = instance_exists(oPlayer) ? oPlayer : noone;

view_enabled = true;
view_visible[0] = true;





camera_width = 1500 ;
camera_height = 1500;
camera_move_speed = .5

camera_info = noone;
camera = noone;
zoom = 3.3
prev_snap_at_first =true 


var _dis_w = camera_width / 2
var _dis_h = camera_height / 2 

window_set_size(_dis_w, _dis_h)
window_center()

global.cam_center_height = 0
global.cam_center_width = 0

if(instance_exists(oPlayer)){
    
    target = oPlayer 
    
}


function scr_camera_init(w,h,z,v=0,c=view_camera[0]){
	
	
	
	var _zoom = z
	var _view_num = v;
	var _cam = c;
	var _width = w;
	var _height = h;
	
	
	_cam_info = {
		cam: _cam,
		zoom: _zoom
	}
	
	
	var _dis_w = _width / 2
	var _dis_h = _height / 2
	
	
	view_enabled = true;
	view_visible[v] = true;
	_cam = view_camera[v];

	camera_set_view_size(_cam,_width * _zoom,_height * _zoom)
	camera_set_view_pos(_cam,50,_width /2)	
	window_set_size(_dis_w, _dis_h)
	surface_resize(application_surface,_width,_height)
	
	return _ca

}

function center_cam_to_room(){
	var c_w = room_width / 2 - camera_get_view_width(camera) / 2
	var c_h = room_height / 2 - camera_get_view_height(camera) / 2
	camera_set_view_pos(camera,c_w, c_h)
}


function cam_setup(){
	
	camera_info = scr_camera_init(camera_width,camera_height,zoom,,,false)
	camera = camera_info.cam
	zoom = camera_info.zoom
	//center_cam_to_room()

}


display_set_gui_size(camera_width, camera_height);
