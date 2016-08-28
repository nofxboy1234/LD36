// ani(animation)
animation = argument0;

if (animation == "jump")
{
  sprite_index = spr_Hero;
  image_speed = 0;

  // Play frame 0 on going up, frame 1 going down.
  image_index = y > yprevious;

  if (vspd < 0)
  {
    image_index = 0;
  }
  else
  {
    image_index = 1;
  }
}
else if (animation == "run")
{
  sprite_index = spr_Hero;
  image_speed = 0.3;

  start_frame = 0;
  end_frame = 5;

  // Loop the animation
  if (image_index < start_frame || floor(image_index) > end_frame)
  {
      image_index = start_frame;
  }
}
else if (animation == "idle")
{
  sprite_index = spr_Hero;
  image_speed = 0.005;

  start_frame = 12;
  end_frame = 13;

  // Loop the animation
  if (image_index < start_frame || floor(image_index) > end_frame)
  {
      image_index = start_frame;
  }
}

