prev_snap_at_first =true     
if(room  != rm_lvl_map and room != rm_main_menu and room != rm_victory ) {
            zoom = 2.5
    
        }else{
            zoom = 3.3
     
       }

    if(room == rm_tutorial){
        
            zoom = 1
    }


if(room == rm_end){
    zoom = 3.7
}
if(room == rm_lev_4 or room == rm_lev_5  or room == rm_lev_3 or room == rm_lev_6 or room =rm_lev_7 or room == rm_lev_8  or room == rm_lev_9 or room == rm_lev_1){
    zoom = 3.5
}

if(room == rm_lev_2){
       zoom = 2.9
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



    if(room == rm_tutorial){
        
           camera_set_view_pos(target.x , target.y , camera)
    }




/*
camera_set_view_size(camera,camera_width,camera_height)
camera_set_view_pos(camera,50,camera_height /2)
surface_resize(application_surface,camera_width,camera_height)
*/

//

