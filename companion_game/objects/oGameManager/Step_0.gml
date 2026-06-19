
if(mouse_check_button_pressed(mb_left)){
        
    
    
    if(room == rm_victory){
         var _col = collision_point(mouse_x, mouse_y,oNextLevelButton, false, true)
         if(instance_exists(_col)){
            go_to_map()
        }
        
    }else if(room == rm_lvl_map){
        var _col = collision_point(mouse_x, mouse_y,oButtonLevel, false, true)
        if(instance_exists(_col)){
            attempt_level_select(_col)
        }
        
        var _col = collision_point(mouse_x, mouse_y,oGoToLevel, false, true)
        if(instance_exists(_col)){
            attempt_level_change(_col)
        }
        
        var _col = collision_point(mouse_x, mouse_y,oJukeBok, false, true)
        if(instance_exists(_col) and _col.visible ){
            oJukeBok.inc_music()
        }
        
         var _col = collision_point(mouse_x, mouse_y,oIsland, false, true){
              if(instance_exists(_col) and oCamera.target != _col){
                    oCamera.target = _col 
             }
        } 
    }
    
      else{
          var _col = collision_point(mouse_x, mouse_y,oResetButton, false, true)
          if(instance_exists(_col)){
               reset_level()
          }
    }
    
    if(room == rm_main_menu){
        
          var _col = collision_point(mouse_x, mouse_y,oStartButton, false, true)
          if(instance_exists(_col)){
                
               
                room_goto(rm_tutorial)
           
               exit 
          }
        
         var _col = collision_point(mouse_x, mouse_y,oExitButton, false, true)
          if(instance_exists(_col)){
               game_end()
               exit 
          }
        
    }
    
    else if(room == rm_tutorial){
           
          var _col = collision_point(mouse_x, mouse_y,oNextButton, false, true)
          if(instance_exists(_col) and _col.visible){
                restart_seq()
          } 
        
    }
    
       

    
}