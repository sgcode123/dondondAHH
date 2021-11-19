void gameover(){
    background(bkg);
  blueButton.show();
  greenButton.show();
  pinkButton.show();
  blackButton.show();

 
  
  if (blueButton.clicked) {
     bkg = blue; 
  }
  if (greenButton.clicked) {
     bkg = green; 
  }
  if (pinkButton.clicked) {
     bkg = pink; 
  }
  if (blackButton.clicked) {
     bkg = black; 
  }


}
  


void gameoverClicks() {
  if (mouseX > 290 && mouseX< 560  && mouseY> 380 && mouseY< 480)
mode = INTRO;

}
