


score = 0 
total_score = score  
current_room = room 
max_level = 5
max_moves = 5 
starting_platform = noone 
selected_lvl = noone 
selected_btn = noone 
level_data = {
    
    //active level is the current assigned levl
    active_level: 1,
    // this is for the map 
    levels_unlocked : 1,
    max_level : 5 , 
    
    lvl_1: {max_moves: 5, high_score: 0 ,  gold_moves_left :1, silver_moves_left : 3, bronze_moves_left: 1, next_level_score_needed: 0},
    lvl_2: {max_moves: 5, high_score: 0 ,  gold_moves_left :5, silver_moves_left : 2, bronze_moves_left: 1, next_level_score_needed: 3},
    lvl_3: {max_moves: 5, high_score: 0 ,  gold_moves_left :1, silver_moves_left : 3, bronze_moves_left: 1, next_level_score_needed: 6},
    lvl_4: {max_moves: 5, high_score: 0 ,  gold_moves_left :1, silver_moves_left : 3, bronze_moves_left: 1, next_level_score_needed: 9}
}


function max_move_lookup(_cur_level){
    
}


function attempt_level_select(_btn){
     selected_btn = _btn 
     if(instance_exists(oGoToLevel)){
            instance_destroy(oGoToLevel)
        }
     if(selected_btn.can_go_to_level){
        with(oButtonLevel){
            if(id != other.selected_btn.id){
                is_chosen = false 
            }
        }
        selected_lvl = selected_btn.lvl
        selected_btn.is_chosen = true 
        
        
        
        var _x = x 
        var _y = y 
        if(instance_exists(oIslandMap )){
            _x = oIslandMap.x 
            _y =  oIslandMap.y + oIslandMap.sprite_height / 2 + 50  
        }
       
        var _inst = instance_create_depth(_x,_y,depth, oGoToLevel)
        with(_inst){
            target_lvl = other.selected_btn.lvl 
        }
     }
}


function show_failed_level_items(){
        
      var _y = oPlayer.y - oPlayer.sprite_height 
        var _buytton_hieght = 900
      instance_create_depth(oPlayer.x ,_y - _buytton_hieght,depth, oResetButton)
}


function level_lookup(is_current_level =false  ){
    
    
    //get the name of the current level
   
    var  _lvl_unlock =  "lvl_"+ string(level_data.active_level)
    if(is_current_level == false){
        
         _lvl_unlock = "lvl_"+ string(level_data.levels_unlocked)
 
    }
    return _lvl_unlock
    
}

function go_to_map(){
    
    var _unlocked_lvl_name = level_lookup(false)
    
        
    var _current_level_name = level_lookup(true) 
     show_message(_current_level_name)
    show_message(_unlocked_lvl_name)
    show_message(total_score)
    
        //we only inc 
        if(total_score >= level_data [$ _unlocked_lvl_name].next_level_score_needed){
                  inc_level()      
        }
      

   
    room_goto(rm_lvl_map)
}


function attempt_level_change(_go){
    
    var _lvl = _go.target_lvl
    switch(_lvl){
        case 1:
                selected_btn = noone
               room_goto(rm_lev_1 )
            break 
        case 2:
           selected_btn = noone
            room_goto(rm_lev_2)
            
        break 
    
     case 3:
           selected_btn = noone
            room_goto(rm_lev_3)
            
        break 
    }
    
}



function reset_level(){
    score = 0 
    
    if(instance_exists(oResetButton)){
        instance_destroy(oResetButton)
        
    }
    var _m_moves =  level_data[$ level_lookup(true)].max_moves 
        
        oPlayer.max_moves = _m_moves
        oPlayer.moves_left = _m_moves
        
        
    with(oPlatform){
        
        if(is_starting_platform){
            other.starting_platform = id 
            image_xscale = 1 
            image_yscale = 1 
        }
        
    }
    
    
            
        oPlayer.x = starting_platform.x 
        oPlayer.y  =starting_platform.y  - starting_platform. sprite_height / 2 
        
 
    
    
    oPlayer.state = PLAYER_STATES.IDLE
}

function victory_condtion(){
    
    
   //score =  oGameManager.max_moves / oPlayer.max_moves
    
   // show_message (score)
    
    var _m_left = oPlayer.moves_left 
    
    var _current_level_name = level_lookup(true)
  
    
    
  
    
    
    if(_m_left  >=  level_data[$ _current_level_name].gold_moves_left){
        score = 3
    }else if(_m_left  >= level_data[$ _current_level_name].silver_moves_left){
        score = 2 
    }else if(_m_left  >= level_data[$ _current_level_name].bronze_moves_left){
        //perfect score
        score = 1
    }
    
    score = clamp(score, 0,3)
    
    
    if(level_data[$ _current_level_name].high_score < score){
        //new highscore! 
        level_data[$ _current_level_name].high_score = score
        //adds the differnce to the total score
        var _score_diff = score -   level_data[$ _current_level_name].high_score
        total_score += _score_diff
    }
    
        if(level_data.active_level == 1){
            score = 3 
          
        }
        if(level_data.active_level == level_data.levels_unlocked){
            total_score += score; 
        }
        room_goto(rm_victory)
}

function show_finished_level_items(){
          
    
    var _y = oPlayer.y - oPlayer.sprite_height 
    var _star_w = sprite_get_width(spr_score)
    var _anim_time_offset = 0
    var _x = oPlayer.x - (_star_w)
  
 
    
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
    
    if(level_data.max_level > level_data.levels_unlocked){
        level_data.levels_unlocked ++
    }
    
    ///TODO 
    /// change to another island 

    
}