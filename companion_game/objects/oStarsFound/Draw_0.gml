draw_self()
if(instance_exists(oGameManager)){
    draw_set_font(fnt_large)
    draw_set_valign(fa_center)
    draw_text(x + sprite_width /2 ,y + sprite_height / 2,oGameManager.total_score)
    draw_set_font(fnt_main)
}
