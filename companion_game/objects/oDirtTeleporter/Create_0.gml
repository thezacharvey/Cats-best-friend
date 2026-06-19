

is_exit = false 

sprite_index = spr_dirt 




function close_hole(){
    if(is_exit){
        return 
    }
    is_exit = true 
    sprite_index = spr_dirt_close
}


function telport(){
    
    
      var _platform = teleport_target.my_plat
    
    if(teleport_target == noone or is_exit or _platform == noone ){
        return 
    }
    
    

    
    
    oPlayer.target_x = _platform.x 
    oPlayer.target_y = _platform.y 
    oPlayer.state = PLAYER_STATES.MOVING
    //make teleport free to move 
    oPlayer.moves_left += 1 
   
    close_hole()
    
}



