/// @description  Drw the text box and "caption"
draw_self();

draw_set_halign(fa_left);
draw_set_color(c_black);
draw_set_font(font0);
draw_text( x+5,y+5, string_hash_to_newline(Text) );

draw_text( x,y-20, string_hash_to_newline("Player's name") );


