void intro(){

  background(pink);
  blackButton.show();
   introGIF.show();
   blackButton.show();
  
   //myHero = new Hero();

   
 // myObject.add(myHero);
}

void introClicks() {
 
 if (mouseX > 290 && mouseX< 560  && mouseY> 380 && mouseY< 480)
mode = GAME;
  myHero = new Hero();
   
  
  myObject.add(myHero);
    myObject.add(new Enemy());
}
