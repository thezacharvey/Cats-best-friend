

switch(state){
        
        case  PLAYER_STATES.IDLE:
            
            
            
               var _fish = collision_point(x,y,oFish, true, true)
            if(instance_exists(_fish)){
                  sprite_index = spr_cat_hurt
                    if(!audio_is_playing(snd_cat_scared)){
                          audio_play_sound(snd_cat_scared,1,false)
                    }
                          
                            target_x = prev_platform.x 
                            target_y = prev_platform.y  -prev_platform.sprite_height / 2
                            current_platform = prev_platform
                            state = PLAYER_STATES.MOVING
                exit 
                
            }
        
            
        if(sprite_index != spr_cat_idle){
            sprite_index = spr_cat_idle
        }
            
              
            if(moves_left <= 1){
                my_sleepy.visible = true 
            }else{
                my_sleepy.visible = false 
            }
            my_sleepy.x  = x
            my_sleepy.y = y - sprite_height / 2  -20
            
            
        if(mouse_check_button_pressed(mb_left)){
            
            
          
            var _platform = collision_point(mouse_x,mouse_y,oPlatform,false,true)
         
        
          //  show_message(distance_to_point(_platform.x, _platform.y))
            //theres a platform
            if(instance_exists(_platform) and _platform != current_platform and distance_to_point(_platform.x, _platform.y) < 1200)
            {   
                 prev_platform = current_platform 
                 current_platform = _platform
                
                
                
                
                var _pitch = random_range(1 , 5)
                if(!audio_is_playing(snd_grass)){
                    audio_play_sound(snd_grass,2,false,,,_pitch)
                }
                
                
                state = PLAYER_STATES.MOVING
               
                target_x = _platform.x 
                target_y = _platform.y  - _platform.sprite_height / 2
                   
            }
            
        }
            
        break; 
        
         case  PLAYER_STATES.MOVING:
            
            if(distance_to_point(target_x,target_y) > 2){
                 var _amt  = og_mve_spd
                    if(sprite_index != spr_cat_JUMP and sprite_index != spr_cat_hurt)  
                    {
                        sprite_index = spr_cat_JUMP
                    }   
                    if(sprite_index == spr_cat_hurt){
                        _amt = hurt_mve_spd
                    }
                
                     x = lerp(x,target_x,_amt)
                     y = lerp(y,target_y,_amt)     
            }else{
                
                x = target_x
                y = target_y
                
          
                
                moves_left -= 1 
                
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
                        var _water_plat = collision_point(x,y,oWaterPlatform, false, true)
                        var _fish = collision_point(x,y,oFish, true, true)
                        if((instance_exists(_water_plat) or instance_exists(_fish) )and prev_platform != noone ){
                            //in water
                            sprite_index = spr_cat_hurt
                            if(!audio_is_playing(snd_cat_scared)){
                                      audio_play_sound(snd_cat_scared,1,false)
                            }
                            target_x = prev_platform.x 
                            target_y = prev_platform.y  -prev_platform.sprite_height / 2
                            state = PLAYER_STATES.MOVING
                            exit 
                        }else{
                            state = PLAYER_STATES.IDLE
                        }
                        
                    }                        
                }
                
            }
         
            
        break; 
    
       
        case  PLAYER_STATES.FAIL:
         //set sprite fail 
            //sleepy cat 
            sprite_index = spr_cat_sleep
             if(!audio_is_playing(snd_cat_purr)){
                    audio_play_sound(snd_cat_purr,2,true)
                }
              my_sleepy.visible = true 
            my_sleepy.x  = x
            my_sleepy.y = y - sprite_height / 2  -20
            //reset_level
            
            
        break; 
        
        
        case  PLAYER_STATES.SUCCESS:
         
        break; 
    
    
         case  PLAYER_STATES.BUSY:
        break; 
    
}




