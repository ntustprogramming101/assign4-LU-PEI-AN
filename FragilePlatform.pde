// Practice2: finish FragilePlatform
final int FRAGILE_PLATFORM_DURATION = 50; // Duration before the platform breaks

class FragilePlatform extends Platform {
boolean isBroken= false;
float duration=0;
boolean playedStepSound = false;
boolean playedBrokenSound=false;
 
  FragilePlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }
   void interact(Player player) {
    if (!isBroken) {
       duration += 1;
        playPlatformSound(fragilePlatformSound);
       if (duration >= FRAGILE_PLATFORM_DURATION) {
        isBroken = true;
         playPlatformSound(fragilePlatformBrokenSound);
        }
      super.interact(player);
    }
     
   }
   void playPlatformSound(SoundFile sound) {
  if (sound == fragilePlatformSound && !playedStepSound) {
    sound.play();
    playedStepSound = true;
  } else if (sound == fragilePlatformBrokenSound && !playedBrokenSound) {
    sound.play();
    playedBrokenSound = true;
  }
}
  void update() {
    super.update(); 
  }
     void display() {
    if (!isBroken) {
      image(fragilePlatformImage, x, y, w, h); 
    } else {
      image(fragilePlatformBrokenImage, x, y, w, h); 
    }
     }
}
 
