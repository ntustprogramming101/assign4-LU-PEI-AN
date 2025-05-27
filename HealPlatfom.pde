// Practice3: finish HealPlatform
class HealPlatform extends Platform {
boolean stepOnPotion=false; 
float potionW, potionH,potionY,potionX;
boolean playedSound = false;

  HealPlatform(float tempX, float tempY) {
    super(tempX, tempY);
    potionW=20;
    potionH=20;
  
  }
 void interact(Player player) {
  if(!stepOnPotion){
    player.health += 1; 
    stepOnPotion=true; 
  }
  if (!playedSound) {
     playPlatformSound(healSound);
     playedSound= true;  
    }
   super.interact(player);
 }
 void update() {
  super.update();
  potionY=y-potionH-5-10*sin(TWO_PI*(frameCount/60.0));
 
  }
  void display() {
    if (!stepOnPotion) { 
        potionX = x + (w - potionW) / 2; 
      image(healPotionImage, potionX, potionY, potionW, potionH); 
    }
    image(platformImage, x, y, w, h); 
  }
    
}
