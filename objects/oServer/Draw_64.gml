/// @description  Display connected players, and number of baddies left.
draw_set_halign(fa_left);
draw_set_font(font0);
draw_set_color(c_red);
draw_text(10,10,string_hash_to_newline("players: "+string(global.PlayerTotal)) );
draw_text(10,30,string_hash_to_newline("baddies: "+string(global.BaddieCount)) );

