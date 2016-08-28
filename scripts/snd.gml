
// ani(animation)
sound = argument0;

if (sound == "jump")
{
  var s = audio_play_sound(sndHero_jump, 1, false);
  audio_sound_gain(s, 0.05, 0);
}
else if (sound == "land")
{
  var s = audio_play_sound(sndHero_land, 1, false);
  audio_sound_gain(s, 0.06, 0);
}
