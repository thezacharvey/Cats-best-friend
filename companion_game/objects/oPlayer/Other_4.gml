



with(oPlatform){
    
    if(is_starting_platform){
        
        other.prev_platform = id 
        other.x = x 
        other.y = y - sprite_height / 2 - other.sprite_height / 2
        if(instance_exists(oGameManager)){
              oGameManager.starting_platform = id 
        }
        
        
        other.current_platform  = id 
        
        show_debug_message("called")
      
        image_xscale = 1 
        image_yscale =  1 
        exit 
    }
    
}


state = PLAYER_STATES.IDLE
