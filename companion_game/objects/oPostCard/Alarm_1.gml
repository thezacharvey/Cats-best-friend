if(image_xscale == og_scale){
    var _s = og_scale + .1
    image_xscale = _s
    image_yscale = _s
}else{
    image_xscale = og_scale
    image_yscale = og_scale
}
alarm[1] =  game_get_speed(gamespeed_fps) * 1