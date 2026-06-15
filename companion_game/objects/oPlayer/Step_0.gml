

switch(state){
        
        case  PLAYER_STATES.IDLE:
        
        if(mouse_check_button_pressed(mb_left)){
            
            
            var _platform = collision_point(mouse_x,mouse_y,oPlatform,false,true)
            
            //theres a platform
            if(instance_exists(_platform))
            {
                
                state = PLAYER_STATES.MOVING
                target_x = _platform.x 
                target_y = _platform.y  - _platform.sprite_height / 2
                   
            }
            
        }
            
        break; 
        
         case  PLAYER_STATES.MOVING:
            
            if(distance_to_point(target_x,target_y) > 2){
                
                    x = lerp(x,target_x,.25)
                     y = lerp(y,target_y,.25)     
            }else{
                x = target_x
                y = target_y
                state = PLAYER_STATES.IDLE
                
            }
         
            
        break; 
        
         case  PLAYER_STATES.BUSY:
        break; 
    
}
