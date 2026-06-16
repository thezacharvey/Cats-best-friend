enum PLAYER_STATES  {
    IDLE, 
    MOVING, 
    BUSY,
    FAIL, 
    SUCCESS
}


coins = 0 
target_x = x 
target_y = y 
state = PLAYER_STATES.IDLE
current_platform = noone 
max_moves = 5
moves_left= max_moves
prev_platform = noone 


 var _on_plat = collision_point(x,y,oPlatform,false , true)
            if(instance_exists(_on_plat)){
                    prev_platform = _on_plat
            
            }   else{
                prev_platform = noone    
            }