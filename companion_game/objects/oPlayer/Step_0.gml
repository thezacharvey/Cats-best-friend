

switch(state){
        
        case  PLAYER_STATES.IDLE:
        
        if(mouse_check_button_pressed(mb_left)){
            
            
            var _platform = collision_point(mouse_x,mouse_y,oPlatform,false,true)
            
            //theres a platform
            if(instance_exists(_platform))
            {
                
                state = PLAYER_STATES.MOVING
                    
            }
            
        }
            
        break; 
        
         case  PLAYER_STATES.MOVING:
            
        break; 
        
         case  PLAYER_STATES.BUSY:
        break; 
    
}
