

if (instance_exists(oPlayer)) {
    var _c = camera_get_active();
    
    // Multiply the width and height by your zoom factor before finding the half
    var _zoomed_width = camera_get_view_width(_c) / oCamera.zoom;
    var _zoomed_height = camera_get_view_height(_c) /  oCamera.zoom;
    
    x = camera_get_view_x(_c) +  500;
    y = camera_get_view_y(_c) +  500
    
}