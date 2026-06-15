// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@desc starts up a basic camera given the params.


///@param {Real} w width
///@param {Real} h height
///@param {Real} z zoom
///@param {Real} v viewport number
///@param {index} c camera
///@return {struct}
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
	
	return _cam_info
	
}