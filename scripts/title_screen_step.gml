text_alpha = ((20*room_speed - alarm[0]) / (20*room_speed));

var start = keyboard_check_pressed(vk_enter);

if (start)
{
  room_goto_next();
}
