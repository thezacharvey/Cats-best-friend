

var _xx = mouse_x 
var _yy = mouse_y  


var _plat = collision_point(mouse_x, mouse_y, oPlatform, false ,true )
if(instance_exists(_plat)){
    
    _xx = _plat.x 
    _yy = _plat.y - 150
    
    if(oPlayer.can_jump){
        sprite_index = spr_land_gree
    }else{
        sprite_index =  spr_land_red
    }
    x = _xx 
    y = _yy  
    
}