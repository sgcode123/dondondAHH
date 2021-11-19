class Hero extends GameObject {
  PVector direction;
  float speed;
  int roomX, roomY;
  Weapon myWeapon;
  int shotTimer, threshold;

  Hero() {
    super();
    speed = 5;
    roomX= 1;
    roomY= 1;
    lives=10;
    shotTimer =0;
    threshold=60;
    myWeapon=new pew();
  }


  void show() {
    fill(purple);
    stroke(black);
    strokeWeight(2);
    fill(#A600AF);
    stroke(#030203);
    ellipse(loc.x, loc.y, 40, 40);
  }

  void act() {


    super.act();
    shotTimer++;
    if (w) velocity.y = -speed;
    if (a) velocity.x = -speed;
    if (s) velocity.y = speed;
    if (d) velocity.x = speed;

    if (velocity.mag() > speed)
      velocity.setMag(speed);


    if (!w && !s) velocity.y = velocity.y * 0.75;
    if (!a && !d) velocity.x = velocity.x * 0.75;


    if (northRoom != #FFFFFF && loc.y == height*0.1 && loc.x >= width/2-50 && loc.x<= width/2+50) {
      roomY--;
      loc = new PVector(width/2, height*0.9-10);
    }
    if (eastRoom != #FFFFFF && loc.x == width*0.9 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX++;
      loc = new PVector(width*0.1+10, height/2);
    }
    if (southRoom != #FFFFFF && loc.y == height*0.9 && loc.x >= width/2-50 && loc.x<= width/2+50) {
      roomY++;
      loc = new PVector(width/2, height*0.1 +10);
    } 
    if (westRoom != #FFFFFF && loc.x == width*0.1 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX--;
      loc = new PVector(width*0.9+10, height/2);
    } 

    myWeapon.update();
    if (keyPressed) if (key == 'p') {
      myWeapon.shoot();
    } 

    // if (mousePressed && shotTimer >= threshold) {
    //   myObject.add(new heroBullet());
    //    shotTimer =0;
    //   }
  }
}
