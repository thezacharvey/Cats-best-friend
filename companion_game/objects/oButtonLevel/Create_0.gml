lvl = 1 
can_go_to_level = false 
is_chosen = false 
my_lock = instance_create_depth(x,y ,depth-1,oLock )
my_high_score = 0 
my_stars = [] 


function setup_stars(){
    my_stars = [] 
    
    var _x  = x - sprite_width / 2  + 50
    repeat(3){
        var _inst = instance_create_depth(_x,y + sprite_height / 2  + 50,depth, oIslandStar)
        array_push(my_stars,_inst)
        _x += _inst.sprite_width 
    }
    
}

function island_level_lookup(_lvl){
    return "lvl_" + string(_lvl)
}

function update_star_high_score(){
    
    var _c = array_length(my_stars)
    var i = 0 
    var _my_level_struct_index = island_level_lookup(lvl)
    if(!instance_exists(oGameManager) or  !variable_struct_exists(oGameManager.level_data,_my_level_struct_index)){
        
        return 
    }
       var _highest_score = oGameManager.level_data[$ _my_level_struct_index].high_score 
    repeat (_c) {
        if(i+1  <= _highest_score){
            my_stars[i].sprite_index = spr_island_star
        }
        i++ 
    }
    
}

setup_stars()