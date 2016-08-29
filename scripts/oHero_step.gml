/// Platform physics

var rkey = keyboard_check(vk_right);
var lkey = keyboard_check(vk_left);
var jkey = keyboard_check_pressed(vk_up);

// Check for ground
if (place_meeting(x, y+1, c))
{
  if (animation == "jump")
  {
    // If hitting the ground after jumping
    // snd("land");
  }

  vspd = 0;

  // Jumping
  if (jkey)
  {
    vspd = -jspd;
    snd("jump");
  }

  // Moving right
  if (rkey)
  {
    image_xscale = 1;
    ani("run");

    if (hspd < spd)
    {
      hspd += accel;
    }
    else
    {
      hspd = spd;
    }
  }

  // Moving left
  if (lkey)
  {
    image_xscale = -1;
    ani("run");

    if (hspd > -spd)
    {
      hspd -= accel;
    }
    else
    {
      hspd = -spd;
    }
  }

  // Check for not moving
  if ((!rkey && !lkey) || (rkey && lkey))
  {
    if (hspd != 0)
    {
      if (hspd < 0)
      {
        hspd += accel;
      }
      else
      {
        hspd -= accel;
      }
    }
    else
    {
      ani("idle");
    }
  }
}
else
{
  // In air
  ani("jump");

  if (vspd < fspd)
  {
    // Apply gravity
    vspd += grav;
  }

  if (keyboard_check_released(vk_up) && vspd < -4)
  {
    vspd = -4;
  }

  // Moving right
  if (rkey)
  {
    image_xscale = 1;

    if (hspd < spd)
    {
      hspd += accel;
    }
    else
    {
      hspd = spd;
    }
  }

  // Moving left
  if (lkey)
  {
    image_xscale = -1;

    if (hspd > -spd)
    {
      hspd -= accel;
    }
    else
    {
      hspd = -spd;
    }
  }

  // Check for not moving
  if ((!rkey && !lkey) || (rkey && lkey))
  {
    if (hspd != 0)
    {
      if (hspd < 0)
      {
        hspd += accel;
      }
      else
      {
        hspd -= accel;
      }
    }
  }
}

// Change music per area
if (place_meeting(x, y, obj_UndergroundSensor))
{
  if (audio_is_playing(sndNinja_picnic_song_02))
  {
    audio_stop_sound(sndNinja_picnic_song_02);
  }

  if (!audio_is_playing(sndNinja_picnic_song_01))
  {
    var s = audio_play_sound(sndNinja_picnic_song_01, 1, true);
  }
}

if (place_meeting(x, y, obj_NexusSensor))
{
  if (audio_is_playing(sndNinja_picnic_song_01))
  {
    audio_stop_sound(sndNinja_picnic_song_01);
  }

  if (!audio_is_playing(sndNinja_picnic_song_02))
  {
    var s = audio_play_sound(sndNinja_picnic_song_02, 1, true);
  }
}

// Death
if (place_meeting(x, y, obj_Death))
{
  room_restart();
}

// Item pickup
if (place_meeting(x, y, obj_Tech))
{
  inst = instance_nearest(x, y, obj_Tech);
  with (inst)
  {
    instance_destroy();
  }
  techs += 1;
}


// Horizontal collisions
if (place_meeting(x+hspd, y, c))
{
  while (!place_meeting(x+sign(hspd), y, c))
  {
    x += sign(hspd)
  }
  hspd = 0;
}

// Move horizontally
x += hspd;

// Vertical collisions
if (place_meeting(x, y+vspd, c))
{
  while (!place_meeting(x, y+sign(vspd), c))
  {
    y += sign(vspd)
  }
  vspd = 0;
}

// Move vertically
y += vspd;
