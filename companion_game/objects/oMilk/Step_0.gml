

if(place_meeting(x,y,oPlayer) and sprite_index !=  spr_enery_icon){
    
    oPlayer.moves_left += 2 
    sprite_index = spr_enery_icon
}

if(sprite_index == spr_enery_icon and instance_exists(oPlayer)){
    x = oPlayer.x 
    y = oPlayer.y - oPlayer.sprite_height / 2
}