is_pulsing =false 
og_scale = image_xscale 
tic = 0 
function pulse (){
    if(is_pulsing){
        return
    }
    is_pulsing = true 
    alarm[0] = game_get_speed(gamespeed_fps) * .25
}





pulse()