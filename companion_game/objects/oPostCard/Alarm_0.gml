if(sprite_index == slide_0){
    sprite_index =slide_2
}
else if(sprite_index == slide_2){
    sprite_index =slide_3
}

else if(sprite_index == slide_3){
    sprite_index =slide_4
}

else if(sprite_index == slide_4){
    sprite_index =slide_0
}


alarm[0] = game_get_speed(gamespeed_fps) * 5