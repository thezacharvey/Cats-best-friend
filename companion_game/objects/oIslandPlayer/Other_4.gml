if(instance_exists(oIsland)){
    depth= oIslandMap.depth -5
}

if(instance_exists(oGameManager)){
    active_level = oGameManager.level_data.active_level
    with(oButtonLevel){
        if(lvl == other.active_level){
            other.target_x = x 
            other.target_y = y 
            other.x = other.target_x
             other.y = other.target_y - other.sprite_height / 2 - 50
            if(lvl <6){
                 global.active_island = oIslandMap
            }else{
                global.active_island = oCookieIsland
            }
            
            other.depth = depth - 1
          
           
            oCamera.target = global.active_island
        }
    }
}


