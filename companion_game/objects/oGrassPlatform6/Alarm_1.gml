  
if(place_meeting(x,y,oPlayer)){
    if(oPlayer.state ==PLAYER_STATES.IDLE){
        can_rotate = false 
    }
}else{
    can_rotate = true 
}




if(can_rotate){
  
if(safe_to_land){
    safe_to_land = false
    sprite_index = spr_cookie4
  
}else{
      safe_to_land = true 
     sprite_index = spr_cookie_4
     
}
    
}
alarm[1] = game_get_speed(gamespeed_fps) * irandom_range(2,4)