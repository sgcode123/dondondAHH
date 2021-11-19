class GameObject {
  int roomX,roomY;
  int lives;
  PVector velocity;
int score;
  PVector loc;
  int size;
int hp;


  GameObject ( ) {
    loc= new PVector (width/2,height/2);
    velocity =new PVector (0,0);
    hp = 1;
  }

  void show() {
  }

  void act() {
    
    loc.add(velocity);

    if (loc.x < width*0.1) loc.x = width*0.1;
    if (loc.x > width*0.9) loc.x = width*0.9;
    if (loc.y < height*0.1) loc.y = height*0.1;
    if (loc.y > height*0.9) loc.y = height*0.9;
  }
}
