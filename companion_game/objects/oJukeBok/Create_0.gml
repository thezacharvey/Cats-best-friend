
music_index = 0 
music_arr = [snd_island_main, snd_island_2, noone ]
function inc_music(){
    
    
    
    if(music_index < array_length(music_arr) -1 ){
         music_index ++
    }else{
        music_index = 0 
    }
   
    
    audio_stop_all()
    var _snd = music_arr[music_index]
    if(_snd != noone){
           audio_play_sound(_snd,1,true)
    }
 
    if(music_index == 0){
        sprite_index = spr_jukebox_1
    }else if(music_index == 1){
        sprite_index = spr_juke_color
    }else{
        sprite_index = spr_juke_idle
    }
        
}


    if(music_index == 0){
        sprite_index = spr_jukebox_1
    }else if(music_index == 1){
        sprite_index = spr_juke_color
    }else{
        sprite_index = spr_juke_idle
    }

     audio_stop_all()
    var _snd = music_arr[music_index]
    if(_snd != noone){
           audio_play_sound(_snd,1,true)
    }

