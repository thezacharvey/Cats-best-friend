// Auto-generated stubs for each available event.

function display_next_button(_seq_id)
{
       
        show_debug_message(_seq_id)
        layer_sequence_pause(_seq_id)
    
        global.tut_seq = _seq_id 
        
        if(instance_exists(oNextButton)){
            oNextButton.visible = true 
        }
    
}

function restart_seq(){
    if(!layer_sequence_is_paused(global.tut_seq)){
        return 
    }
    
    layer_sequence_play(global.tut_seq)
    oNextButton.visible = false 
    
}