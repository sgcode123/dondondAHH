class Rainbowpew extends Weapon{
  Rainbowpew(){
    super(100,20);
  }
  
}
class pew extends Weapon{
   pew(){
    super(100,20);
  }
  
}
class magicpew extends Weapon{
   magicpew(){
    super(100,20);
  }
  void shoot(){
    if(shotTimer >= threshold){
      for(int i=0; i < 30; i++){
       // aimPVector aimVector = new PVector (mouseX-myHero.loc.x,mouseY -myHero.loc.y);
       // aimPVector.rotate(random(-PI,PI));
       // aimPVector.setMag(bulletSpeed);
      }
      
      shotTimer = 0;
      
  }
}
}
