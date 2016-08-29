/// initiate variables
// time = 0;
debug = true;

// camera control
cam_center_x = view_wview / 2;
cam_center_y = view_hview / 2;

// Play bg music
// var s = audio_play_sound(sndNinja_picnic_song_01, 1, true);
// if (room == underground)
// {
  // var s = audio_play_sound(sndNinja_picnic_song_01, 1, true);
// }
if (room == nexus)
{
  audio_stop_all();
  var s = audio_play_sound(sndNinja_picnic_song_02, 1, true);
}

success = false;
