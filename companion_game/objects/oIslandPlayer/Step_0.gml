if(state == "idle"){
    
}else if(state == "moving"){
    if(distance_to_point(target_x,target_y) > .25){
        x = lerp(x, target_x,mve_spd)
         y= lerp(y, target_y,mve_spd)
    }else{
        
        x = target_x
        y = target_y  
        state = "idle"   
    }
    
    
    
}