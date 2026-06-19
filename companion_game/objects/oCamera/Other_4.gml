   if(room  != rm_lvl_map and room != rm_main_menu and room != rm_victory) {
            zoom = 2.5
        }else{
            zoom = 3.3
     
       }

if(instance_exists(oPlayer) ){
        target = oPlayer 
     
    
}else{
    if(instance_exists(oCamLookAt)){
        target = oCamLookAt
    }else{
        target = noone 
        
    }
}


cam_setup();


/*
camera_set_view_size(camera,camera_width,camera_height)
camera_set_view_pos(camera,50,camera_height /2)
surface_resize(application_surface,camera_width,camera_height)
*/

//

