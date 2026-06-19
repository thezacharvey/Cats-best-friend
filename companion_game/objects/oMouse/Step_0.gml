
x = mouse_x 
y = mouse_y 


if(mouse_check_button_pressed(mb_left)){
    image_xscale = curre_scale -  curre_scale / 15
    image_yscale = curre_scale -  curre_scale / 15
}

if(mouse_check_button_released(mb_left)){
    image_xscale = curre_scale 
    image_yscale = curre_scale 
}




