visible = false 
noise_tick  = 0
how_many_loops = 2
xx_offset  =  sprite_width / 2 - 120
yy_offset  =  -(oPlayer.sprite_height/2) - 100



function start_noise(){
    if(visible or !instance_exists(oPlayer)){
        return 
    }
    
    
    //yy_offset  =  -(oPlayer.sprite_height/2) - 100
    
    //x = oPlayer.x +xx_offset
    //y = oPlayer.y - yy_offset
    image_index = 0 
    visible = true 
    noise = 0 
    
}


