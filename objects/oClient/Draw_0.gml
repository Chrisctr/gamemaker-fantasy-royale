/// @description  Draw all sprites in level

// set the X and Y of the client so the room "follows" our player
x = clientx;
y = clienty;

// Now loop through all active sprites and draw them
var index = 0;
for(i=0;i<sprites;i++){
    var xx,yy,sp,spindex, col;
    
    xx = ds_list_find_value(allsprites,index++);
    yy = ds_list_find_value(allsprites,index++);
    sp = ds_list_find_value(allsprites,index++);
    spindex = ds_list_find_value(allsprites,index++);
    col = ds_list_find_value(allsprites,index++);
    name = ds_list_find_value(allsprites,index++);

    draw_sprite_ext(sp,spindex,xx,yy,1,1,0,col,1.0);
    
    draw_set_color(c_white);
    draw_set_font(fName);
    draw_set_halign(fa_center);
    draw_text(xx+16,yy-20,string_hash_to_newline(name));
}






