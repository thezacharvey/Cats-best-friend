

switch(state){
        
        case  PLAYER_STATES.IDLE:
            
            
        
            
        if(sprite_index != spr_cat_idle){
            sprite_index = spr_cat_idle
        }
            
        if(mouse_check_button_pressed(mb_left)){
            
            
            var _platform = collision_point(mouse_x,mouse_y,oPlatform,false,true)
         
        
          //  show_message(distance_to_point(_platform.x, _platform.y))
            //theres a platform
            if(instance_exists(_platform) and _platform != current_platform and distance_to_point(_platform.x, _platform.y) < 1200)
            {   
                current_platform = _platform
              
                  
                
                state = PLAYER_STATES.MOVING
               
                target_x = _platform.x 
                target_y = _platform.y  - _platform.sprite_height / 2
                   
            }
            
        }
            
        break; 
        
         case  PLAYER_STATES.MOVING:
            
            if(distance_to_point(target_x,target_y) > 2){
                
                    if(sprite_index != spr_cat_JUMP)  
                    {
                        sprite_index = spr_cat_JUMP
                    }   
                 var _amt  = .15
                     x = lerp(x,target_x,_amt)
                     y = lerp(y,target_y,_amt)     
            }else{
                
                x = target_x
                y = target_y
                
          
                
                moves_left -- 
                
                if(place_meeting(x,y,oGoal)){
                    state = PLAYER_STATES.SUCCESS
                        y = oGoal.y - sprite_height
                        oArrow.visible = false 
                        image_angle = -90
                        oGameManager.victory_condtion()
                } else{
                    //fail
                    if(moves_left<=0){
                        state = PLAYER_STATES.FAIL
                        oGameManager.show_failed_level_items()
                    }else{
                        state = PLAYER_STATES.IDLE
                    }                        
                }
                
            }
         
            
        break; 
    
       
        case  PLAYER_STATES.FAIL:
         //set sprite fail 
            //sleepy cat 
            sprite_index = spr_cat_sleep
            //reset_level
            
            
        break; 
        
        
        case  PLAYER_STATES.SUCCESS:
         
        break; 
    
    
         case  PLAYER_STATES.BUSY:
        break; 
    
}




