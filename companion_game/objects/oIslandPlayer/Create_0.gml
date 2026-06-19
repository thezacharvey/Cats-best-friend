target_x = x 
target_y  = y  
mve_spd = .15 
state = "idle"
active_level = 1


function island_move_to_button(_tar_btn){
    if(target_x == _tar_btn.x  or state == "moving"){
        return
    }
    target_x = _tar_btn.x 
    target_y = _tar_btn.y - _tar_btn.sprite_height / 2 
    state = "moving"
}