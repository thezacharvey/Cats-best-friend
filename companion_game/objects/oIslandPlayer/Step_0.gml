if(state == "idle"){
    
}else if(state == "moving"){
    if(distance_to_point(target_x,target_y) > .25){
         x = lerp(x, target_x,mve_spd)
         y= lerp(y, target_y,mve_spd)
    }else{
        
        
    
        x = target_x
        y = target_y  
        
        
        var _island = collision_circle(x,y - sprite_height, sprite_width / 2, oIsland,false,true)
        if(instance_exists(_island) and instance_exists(oGoToLevel)){
            oGoToLevel.x = _island.x 
            oGoToLevel.y = _island.y + _island.sprite_height / 2 + 200
            oGoToLevel.depth = _island.depth - 1 
            global.active_island = _island
        }
        var _btn = collision_circle(x,y, sprite_width / 2, oButtonLevel,false,true)
        //depthinh issue fix 
        if(instance_exists(_btn)){
            depth = _btn.depth - 1 
        }
        state = "idle"   
    }
    
}