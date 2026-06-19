



bg_music_index= 0 
bg_music = [snd_island_main, snd_island_2]


function play_sound_plz(_snd, _pr = 2, _loop = false ,_stop_if_player = true ){
    if(_stop_if_player and !audio_is_playing(_snd)){
        audio_stop_sound(_snd)
    }
    audio_play_sound(_snd,_pr,_loop)

}



function start_bg_music(){
    
     var _snd = bg_music[choose(1,0)]
    if(os_browser == browser_not_a_browser){
        
       
       if(!audio_is_playing(_snd)){
            audio_play_sound(_snd,1, true)
        }
    }else{

      //show_message("Music Might work (: ")
            //is browser 
          if (audio_sound_is_playable(_snd))
            {
                if(!audio_is_playing(_snd))
                audio_play_sound(_snd, 1, true );
            }
        }
   
}


