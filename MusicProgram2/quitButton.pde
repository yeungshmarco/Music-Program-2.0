float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void quitButton() {
  quitButtonX = width*1/50;
  quitButtonY = height*1/50;
  quitButtonWidth = width*1/11;
  quitButtonHeight = height*1/11;
  fill(red);
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight){
    fill(green);
  } else {
    fill(red);
  }
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, 20);
  fill(black);
  textAlign(CENTER, CENTER);
  text("Quit", quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}
//
void quitButtonMousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
}
