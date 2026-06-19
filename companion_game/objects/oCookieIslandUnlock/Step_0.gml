   
if(keyboard_check_pressed(vk_f1)){
    show_first_time()
}

if(visible and instance_exists(oGoToLevel)){
    x =oGoToLevel.x  - oGoToLevel.sprite_width / 2 - sprite_width / 2 - 100
    y = oGoToLevel.y 
}
    