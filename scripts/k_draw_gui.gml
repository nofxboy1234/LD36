// /// draw player's HP
// for (i = 0; i < obj_Hero.maxHP; i += 2;) {
//     draw_sprite(sHPHeart, clamp(obj_Hero.hp-i, 0, 2), (view_wview/2)-((obj_Hero.maxHP|2)-2)*16+32*i, 48);
// }

draw_set_color(c_green);
draw_text(10, 10, "technologies found:" + string(obj_Hero.techs) + "/6");

if (success)
{
  draw_set_colour(c_fuchsia);
  draw_text(view_wview/2 - 200, view_hview/2, "All technologies found!");
}

if (debug) {
    draw_set_colour(c_red);
    draw_rectangle((view_wview/2)-16, (view_hview/2)-16 , (view_wview/2)+16, (view_hview/2)+16, true);
    draw_text(50, 32*1, "obj_Hero.animation = " + string(obj_Hero.animation));
    draw_text(50, 32*2, "obj_Hero.image_speed = " + string(obj_Hero.image_speed));
    draw_text(50, 32*3, "obj_Hero.image_index = " + string(obj_Hero.image_index));

}
