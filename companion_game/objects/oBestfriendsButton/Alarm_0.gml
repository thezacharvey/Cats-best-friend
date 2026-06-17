
var _image_x = sin(current_time) 
//show_debug_message(_image_x)
_image_x = clamp(_image_x,.75,1.5)

image_xscale = _image_x 
image_yscale = _image_x

alarm[0] = game_get_speed(gamespeed_fps) * .10

