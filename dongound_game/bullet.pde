class heroBullet extends GameObject {

  //  int lives;
  //  PVector loc;
  // PVector velocity;
  PVector direction;
  int timer;
color bulletc;


  heroBullet(PVector aimVector,color c,int s) {
    loc = myHero.loc.copy();
     velocity = aimVector.copy();
     bulletc = c;
  
    timer = 60;
    lives = 1;
 size = s ;
  roomX = myHero.roomX;
 roomY = myHero.roomY;
    //loc = new PVector(myUFO.loc.x, myUFO.loc.y);
  //  velocity = new PVector(myShip.direction.x, myShip.direction.y);

       
        
        //if(spacekey){


   
   
   
   
   
    // }
    //velocity = new PVector(myShip.loc.x, myShip.loc.y);
     // velocity.setMag(10);
    //size = 10;
  }


  void show() {

    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, size, size);
  }

  void act() {
    //  loc.add(velocity);

    ///  if (loc.y < -50) loc.y = height+50;
    //  if (loc.y > height +50)loc.y = -50;
    // if(loc.x < -50) loc.x = width+50;
    // if (loc.x > width+50) loc.x = -50;
     loc.add(velocity);

    if (loc.x < width*0.1) {
         myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
    loc.x = lives = 0;
    }
    if (loc.x > width*0.9){
         myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
    loc.x = lives = 0;
    }
    if (loc.y < height*0.1){
         myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
    loc.x = lives = 0;
    }
    if (loc.y > height*0.9) {
         myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
    loc.x = lives = 0;
    }
    
    timer --;
    if (timer == 0) {
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
       myObject.add(new Blast(loc.x, loc.y));
      lives = 0;
    }
  }
}
