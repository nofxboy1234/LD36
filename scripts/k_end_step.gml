// move camera

var _x, _y;

if (object_exists(obj_Hero)) {
  x_slowdown = 0.1;
  y_slowdown = 0.1;

  x_offset = 0;
  y_offset = view_hview * 0;

  cam_center_x += ((obj_Hero.x - cam_center_x + (x_offset * obj_Hero.image_xscale)) * x_slowdown);
  cam_center_y += ((obj_Hero.y - cam_center_y + (y_offset * obj_Hero.image_yscale)) * y_slowdown);

  cam_x1 = cam_center_x - (view_wview / 2);
  cam_y1 = cam_center_y - (view_hview / 2);

  // Stop camera 1 width and height from the right and bottom of room.
  cam_x1 = clamp(cam_x1, 0, room_width - view_wview);
  cam_y1 = clamp(cam_y1, 0, room_height - view_hview);

  view_xview = round(cam_x1);
  view_yview = floor(cam_y1);
}


