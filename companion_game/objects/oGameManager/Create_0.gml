


score = 0 
//move score
low_score = 1 
silver_score = 3 
gold_score = 5 

current_level = 1 
current_room = room 
max_level = 5
max_moves = 5 
starting_platform = noone 
selected_lvl = noone 
selected_btn = noone 


function max_move_lookup(_cur_level){
        
    
    var _m_moves = 5 
    //here we set max moves for each level.
    //this dicates the scoring. 
    switch (_cur_level) {
    	case 1:
            low_score = -1 
            silver_score = -2
            gold_score = 1
            
            _m_moves = 5 
        break; 
      case 2:
            low_score = -1 
            silver_score = -1 
            gold_score = 0 
            
            _m_moves = 5 
        break;
          default:
        break _m_moves = 5
    }
    
    return _m_moves 
    
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


function go_to_map(){
    
    inc_level()
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
    var _m_moves =  max_move_lookup(current_level)
        
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
    score = 0 
    
    var _m_left = oPlayer.moves_left 
    
    if(_m_left == low_score){
        score = 1 
    }else if(_m_left >= low_score and _m_left <= gold_score){
        score = 2 
    }else{
        //perfect score
        score = 3
    }
    
    score = clamp(score, 0,3)
    
     if(current_level == 1){
            score = 3 
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
        
    if(current_level < max_level ){
        current_level ++ 
    }
    
}