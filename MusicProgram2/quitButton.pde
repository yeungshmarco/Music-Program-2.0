float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void quitButton() {
  quitButtonX = width*1/50;
  quitButtonY = height*1/50;
  quitButtonWidth = width*1/10;
  quitButtonHeight = height*1/10;
  fill(red);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  text("Quit", quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}
