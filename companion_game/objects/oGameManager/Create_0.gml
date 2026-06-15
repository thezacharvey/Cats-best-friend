


score = 0 
current_level = 0 
max_level = 5

function show_finished_level_items(){
        
    
    var _y = oPlayer.y - oPlayer.sprite_height 
    var _star_w = sprite_get_width(spr_score)
    var _anim_time_offset = 0
    var _x = oPlayer.x - (_star_w * 3) /2
    if(current_level == 0){
        score = 3 
    }
    
    repeat (score) {
            
        
     
       var _inst = instance_create_depth(_x,_y,depth, oStar)
        _inst.time_offset += _anim_time_offset
        _inst.animate_in()
        _anim_time_offset += 3
         _x += _star_w
    }
    var _buytton_hieght = 900
    instance_create_depth(oPlayer.x ,_y - _buytton_hieght,depth, oNextLevelButton)
       
}

function inc_level(){
        
    if(current_level < max_level ){
        current_level ++ 
    }
    
}