class DarknessCell {
  float opacity;
  float x, y, size;

  DarknessCell(float _x, float _y, float s) {
    size = s;
    x= _x;
    y=_y;
    opacity = random(0, 255);
  }


  void show() {
    fill(0, opacity);
noStroke();
    square(x, y, size);
    // d= dist();
    //   opacity = map( d, 0,100,0,255);
  }
  void act() {
    opacity = dist(myHero.loc.x, myHero.loc.y, x, y)/2;
  }
}
