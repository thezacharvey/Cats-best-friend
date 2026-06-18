

if(visible){
    noise_tick ++
    if(noise_tick >= how_many_loops){
        noise_tick = 0 
        visible = false 
    }
}