// /// draw player's HP
// for (i = 0; i < obj_Hero.maxHP; i += 2;) {
//     draw_sprite(sHPHeart, clamp(obj_Hero.hp-i, 0, 2), (view_wview/2)-((obj_Hero.maxHP|2)-2)*16+32*i, 48);
// }
if (debug) {
    draw_set_colour(c_red);
    draw_rectangle((view_wview/2)-16, (view_hview/2)-16 , (view_wview/2)+16, (view_hview/2)+16, true);
    draw_text(50, 32*1, "obj_Hero.animation = " + string(obj_Hero.animation));
    draw_text(50, 32*2, "obj_Hero.image_speed = " + string(obj_Hero.image_speed));
    draw_text(50, 32*3, "obj_Hero.image_index = " + string(obj_Hero.image_index));

//     draw_text(50, 32*2, "oCam.x = " + string(oCam.x));
    //show_debug_message("fps = " + string(fps));

    //  room_speed: the number of game steps that GameMaker: Studio will TRY to
    //  maintain each second.
    // draw_text(32, 32*1, "room_speed = " + string(room_speed));

    //  fps: the number of CPU steps that GameMaker: Studio is actually completing
    //  in a second, CAPPED at the room_speed.
    // draw_text(32, 32*2, "fps = " + string(fps));

    //  fps_real: the number of CPU steps that GameMaker: Studio is ACTUALLY completing
    //  in a second (the real fps), and this value is generally MUCH HIGHER
    //  than the room_speed, but will drop as your game gets more complex and uses
    //  more processing power to maintain the set room speed.
    // draw_text(32, 32*3, "fps_real = " + string_format(fps_real, 3, 12));

    // delta_time is the time that has passed between this CPU step and the last.
    // In Love2d, dt is measured in seconds
    // (https://love2d.org/wiki/Tutorial:Hamster_Ball), whereas GM:S measures
    // delta_time in microseconds. There are 1 million microseconds in a second,
    // so we divide delta_time by 1000000 to get dt in seconds.
    // This is then multiplied by the 'pixels per second' value to get
    // the actual value to move in pixels on this frame:
    // distance_to_move__on_this_frame = pixels_per_sec * (delta_time / 1,000,000)

    // delta_time will affect: alarms (timers), movement code, and animations.

    // ~
    // // ideal_frame_rate for semi-fixed timestep, see:
    // // (http://gafferongames.com/game-physics/fix-your-timestep/)

    // draw_text(32, 32*4, "delta_time = " + string(delta_time));
    // draw_text(32, 32*5, "dt = " + string_format(dt, 3, 12));

    // if (instance_exists(obj_Hero))
    // {
    //     start_x = window_get_width()-300;
    //     draw_set_color($FF007F);

    //     draw_text(start_x, 32*1, "obj_Hero.last_hitbox_x1 = " + string(obj_Hero.last_hitbox_x1));
    //     draw_text(start_x, 32*2, "obj_Hero.last_hitbox_y1 = " + string(obj_Hero.last_hitbox_y1));
    //     draw_text(start_x, 32*3, "obj_Hero.last_hitbox_x2 = " + string(obj_Hero.last_hitbox_x2));
    //     draw_text(start_x, 32*4, "obj_Hero.last_hitbox_y2 = " + string(obj_Hero.last_hitbox_y2));

    //     draw_text(start_x, 32*5, "obj_Hero.code_check = " + string(obj_Hero.code_check));

    //     draw_set_color($FF5F00);

    //     draw_text(start_x, 32*6, "obj_Hero.last_blockbox_x1 = " + string(obj_Hero.last_blockbox_x1));
    //     draw_text(start_x, 32*7, "obj_Hero.last_blockbox_y1 = " + string(obj_Hero.last_blockbox_y1));
    //     draw_text(start_x, 32*8, "obj_Hero.last_blockbox_x2 = " + string(obj_Hero.last_blockbox_x2));
    //     draw_text(start_x, 32*9, "obj_Hero.last_blockbox_y2 = " + string(obj_Hero.last_blockbox_y2));

    //     draw_set_color($00FF3F);

    //     if (instance_exists(obj_Hero.myHurtbox))
    //     {
    //         draw_text(start_x, 32*10, "obj_Hero.hurtbox_x1 = " + string(obj_Hero.myHurtbox.x-32));
    //         draw_text(start_x, 32*11, "obj_Hero.hurtbox_y1 = " + string(obj_Hero.myHurtbox.y-128));
    //         draw_text(start_x, 32*12, "obj_Hero.hurtbox_x2 = " + string(obj_Hero.myHurtbox.x));
    //         draw_text(start_x, 32*13, "obj_Hero.hurtbox_y2 = " + string(obj_Hero.myHurtbox.y));
    //     }
    // }

    // draw_set_color(c_teal);
    // draw_text(start_x, 32*14, "k.time = " + string(k.time));
}
