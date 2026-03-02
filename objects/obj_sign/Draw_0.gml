draw_self();

if (global.show_text) {
	draw_set_colour(c_gray);
	draw_set_font(fnt_tutorial);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text(x, y - 16, text);
	draw_set_font(-1);
	draw_set_colour(-1);
}