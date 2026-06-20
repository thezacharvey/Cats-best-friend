
y += fall_spd
image_angle += 5
if(y > room_height){
    //instance_destroy()
     y = -sprite_height 
     fall_spd = irandom_range(8,16) * 10
    
}
