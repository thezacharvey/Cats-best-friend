

is_exit = false 
 teleport_target = noone 
my_plat = noone 

sprite_index = spr_dirt 




function close_hole(){
    sprite_index = spr_dirt_close
}


function telport(){
      if(sprite_index== spr_dirt_close){
        return 
    }
      var _platform = noone 
    
  
    
    if(_teleport_target != noone){
         
        
        var _x  = _teleport_target.x
        var _y = _teleport_target.y 
        var _plt = collision_point(_x,_y, oPlatform, false, true)
        if(instance_exists(_plt)){
            _platform = _plt
           // show_message(oPlayer.x - _plt.x )
        }
        
    }
    
    
    if(_platform == noone){
        return 
    }
    
    

    
    
    oPlayer.target_x= _platform.x 
    oPlayer.target_y = _platform.y - _platform.sprite_height / 2 
    oPlayer.state = PLAYER_STATES.MOVING
    //make teleport free to move 
    oPlayer.moves_left += 1 
   
    close_hole()
    
}



