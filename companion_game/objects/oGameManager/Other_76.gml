var _is = event_data[? "message"]
var _seq_id = event_data[? "element_id"]

if(_is == "show_next_button"){
    display_next_button(_seq_id)
}else if(_is == "finish_tutorial"){
    room_goto(rm_lvl_map)
}
