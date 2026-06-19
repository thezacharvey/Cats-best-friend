

has_shown = false 
visible = false 


function show_first_time(){
    if(has_shown){
        return    
    }
    if(instance_exists(oSailLine)){
        oSailLine.pulse()
    }
    if(instance_exists(oGoToLevel) and instance_exists(oIslandPlayer)){
        x = oGoToLevel.x  - oGoToLevel.sprite_width / 2 - sprite_width / 2 - 100
        depth = oIslandPlayer.depth 
        y = oGoToLevel.y 
        
    }
 
    has_shown = true 
    visible = true 
  alarm[0] = game_get_speed(gamespeed_fps) * 5
    
}


