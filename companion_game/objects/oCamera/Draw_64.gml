


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


if(room == rm_main_menu){

        draw_set_alpha(.25)
        var _h =display_get_gui_height()
        var _yyy =  _h - 50 
        var _cook =  "Cookie Jam #4"
        var _txt =  "Made by Zac Harvey for the "
        draw_set_halign(fa_center)
        draw_set_font(fnt_main)
        draw_set_colour(c_yellow)
        var _t_l = string_length(_txt)
        var f_s = font_get_sdf_spread(fnt_main)
     
       var _xxx = display_get_gui_width() / 2  - _t_l - 85
            var _time_factor = current_time * .002 
            var _hue = (sin(_time_factor) + 1) * 127.5;

        
        var _colo = make_color_hsv(_hue, 255, 255);
    
        
    
     
        draw_text(_xxx, _yyy,_txt)
        _xxx += string_width(_txt) - 66
        draw_set_colour(_colo)
         draw_text(_xxx, _yyy,_cook)
         draw_set_colour(c_white)
    
        draw_set_alpha(1)





}