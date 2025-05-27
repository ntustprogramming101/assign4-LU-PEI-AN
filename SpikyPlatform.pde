// Practice1: finish SpikyPlatform
class SpikyPlatform extends Platform {
  boolean hasDealtDamage = false;

  SpikyPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }

  void interact(Player player) {
    if (!hasDealtDamage) {
      player.health -= 1;
      hasDealtDamage = true;

      playPlatformSound(spikyPlatformSound);
    }
    super.interact(player);  
  }

  void update() {
    super.update();
    if (recycleFlag) {
      hasDealtDamage = false;
      playedSound = false;  //
    }
  }

  void display() {
    image(spikyPlatformImage, x, y, w, h);
  }
}
