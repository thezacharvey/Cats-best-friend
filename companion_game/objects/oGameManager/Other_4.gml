if(room == rm_victory){
        
    if(instance_exists(oNextLevelButton)){
              var _y = oNextLevelButton.y - oNextLevelButton.sprite_height 
               var _star_w = sprite_get_width(spr_score)
              var _anim_time_offset = 0
              var _x = oNextLevelButton.x - (_star_w)
                
              
              repeat (score) {
          
                 var _inst = instance_create_depth(_x,_y,depth, oStar)
                  _inst.time_offset += _anim_time_offset
                  _inst.animate_in()
                  _anim_time_offset += 3
                   _x += _star_w
              }
        
               
        
    }
    
    
}else if(room == rm_lvl_map){
        
    with(oButtonLevel){
        
        if(lvl <= other.current_level){
            can_go_to_level = true 
        }else{
            can_go_to_level = false   
        }
        
    }
    
    
}

