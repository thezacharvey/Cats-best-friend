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
og_mve_spd = .15
hurt_mve_spd = .05
max_jump_distance= 1200

prev_platform = noone 
my_sleepy = instance_create_depth(x,y - sprite_height / 2  -20,depth, oSleep)
my_noise = instance_create_depth(x,y - sprite_height / 2  -20,depth, oNoise)
my_sleepy.visible = false 


             var _on_plat = collision_point(x,y,oPlatform,false , true)
            if(instance_exists(_on_plat)){
                    prev_platform = _on_plat
            
            }   else{
                prev_platform = noone    
            }