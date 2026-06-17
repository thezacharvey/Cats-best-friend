


if(instance_exists(oGoal) and room != rm_victory and room != rm_lvl_map){
    

    
    
    
    
    var _view = view_camera[0]
    
    
    var _xx = (oGoal.x - camera_get_view_x(_view))/ zoom 
 
    
    var _player_yy = (oGoal.y - camera_get_view_y(_view)) / zoom 
    var h = camera_get_view_height(_view)
    if(_player_yy < h and _player_yy > 0 ){
        //dont draw, player within screen 
    }else{
        
        var _yy = 100
    
        draw_sprite_ext(spr_player_locator,0, _xx,_yy,1,1,0,c_white,1)
}
        
    }
    