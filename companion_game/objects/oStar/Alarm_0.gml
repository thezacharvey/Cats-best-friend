if(image_xscale < 1 ){
    
    var _s = 0.1 
    image_xscale += _s 
    image_yscale += _s 
        
    alarm[0] =game_get_speed(gamespeed_fps) * .025 
}