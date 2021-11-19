class Weapon{
 int shotTimer, threshold;
 int bulletSpeed;
 int x;
 
  Weapon(){
    shotTimer = 0;
    threshold = 30;
    bulletSpeed =5;
   // x=10;
  }
  
  
    Weapon(int thr,int bs){
    shotTimer = 0;
    threshold = thr;
    bulletSpeed =bs;
  }
  
  void update(){
    shotTimer++;
  }
  void shoot(){
    
    if(shotTimer >= threshold){
      PVector aimVector = new PVector (mouseX-myHero.loc.x,mouseY -myHero.loc.y);
    aimVector.setMag(bulletSpeed);
     myObject.add (new heroBullet(aimVector,purple,10));
    //myObject.add (new heroBullet());
    shotTimer =0;
    }
    
  }
  
  
}
