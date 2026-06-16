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