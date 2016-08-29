// draw_set_alpha(1.0);
draw_set_alpha(text_alpha);

offset = 100;

draw_set_color(c_yellow);
draw_set_font(fnt_title);
draw_text(view_wview / 2 - 500, view_hview / 2 - 350 + offset, "LD36 - Ancient Technology");

draw_set_color(c_white);
draw_set_font(fnt_title_02);
draw_text(view_wport / 2 - 100, view_hview / 2 - 250 + offset, "Press Enter to start");

draw_set_colour(c_orange);
draw_text(view_wview / 2 - 610, view_hview / 2 - 250 + 80 + offset, credit_text1);
draw_set_colour(c_fuchsia);
draw_text(view_wview / 2 - 610, view_hview / 2 - 200 + 120 + offset, credit_text2);
draw_text(view_wview / 2 - 610, view_hview / 2 - 200 + 150 + offset, credit_text3);
draw_text(view_wview / 2 - 610, view_hview / 2 - 200 + 180 + offset, credit_text4);
draw_text(view_wview / 2 - 610, view_hview / 2 - 200 + 210 + offset, credit_text5);

// reset to defaults
draw_set_alpha(def_text_alpha);
draw_set_color(def_text_colour);
draw_set_font(-1);
