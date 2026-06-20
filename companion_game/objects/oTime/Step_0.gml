if(place_meeting(x,y,oPlayer)){
    
    if(instance_exists(oFish)){
        oFish.image_speed = .25
    }
    oPlayer.moves_left += 2 
    instance_destroy()
}