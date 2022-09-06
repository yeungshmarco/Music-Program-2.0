float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void quitButtonMousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
}
//
void quitButton() {
  quitButtonX = width*1/50;
  quitButtonY = height*1/50;
  quitButtonWidth = width*1/25;
  quitButtonHeight = width*1/20;
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    stroke(green);
    noFill();
    strokeWeight(5);
    arc(width*1/25, height*1/15, width*1/30, width*1/30, radians(-40), radians(220));
    line(width*1/25, height*1/35, width*1/25, height*1/15);
    noStroke();
    fill(black);
    rect(quitButtonX+width*1/20, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("Quit", quitButtonX+width*1/20, quitButtonY, quitButtonWidth, quitButtonHeight);
  } else {
    stroke(red);
    noFill();
    strokeWeight(5);
    arc(width*1/25, height*1/15, width*1/30, width*1/30, radians(-40), radians(220));
    line(width*1/25, height*1/35, width*1/25, height*1/15);
    noStroke();
    fill(black);
    rect(quitButtonX+width*1/20, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(white);
  }
}
