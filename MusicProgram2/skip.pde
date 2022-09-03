float skipButtonX1, skipButtonY1, skipButtonX2, skipButtonY2, skipButtonX3, skipButtonY3;
float skipButtonX4, skipButtonY4, skipButtonX5, skipButtonY5, skipButtonX6, skipButtonY6;
float skipEllipseX, skipEllipseY, skipEllipseDiameter;
float skipXLength, skipYLength;
Boolean insideSkipCircle=false;
//
void skipKeyPressed() {
  if ( keyCode == RIGHT ) {
    if (songNo==1) {
      song1.skip(5000);
    }
    if (songNo==2) {
      song2.skip(5000);
    }
    if (songNo==3) {
      song3.skip(5000);
    }
    if (songNo==4) {
      song4.skip(5000);
    }
  }
}
//
void skipButton() {
  skipEllipseX = width*197/288;
  skipEllipseY = pauseEllipseY;
  skipEllipseDiameter = pauseEllipseDiameter;
  skipButtonX1 = width*193/288;
  skipButtonY1 = pauseTriY1+width*1/576;
  skipButtonX2 = skipButtonX1;
  skipButtonY2 = pauseTriY2-width*1/576;
  skipButtonX3 = width*199/288;
  skipButtonY3 = nextSongTriY3;
  skipButtonX4 = width*197/288;
  skipButtonY4 = skipButtonY1;
  skipButtonX5 = skipButtonX4;
  skipButtonY5 = skipButtonY2;
  skipButtonX6 = width*203/288;
  skipButtonY6 = skipButtonY3;
  fill(white);
  stroke(black);
  strokeWeight(3);
  ellipse(skipEllipseX, skipEllipseY, skipEllipseDiameter, skipEllipseDiameter);
  fill(black);
  noStroke();
  triangle(skipButtonX4, skipButtonY4, skipButtonX5, skipButtonY5, skipButtonX6, skipButtonY6);
  triangle(skipButtonX1, skipButtonY1, skipButtonX2, skipButtonY2, skipButtonX3, skipButtonY3);
  fill(white);
}
//
void skipButtonMousePressed() {
  if (insideSkipCircle==true) {
    if (songNo==1) {
      song1.skip(5000);
    }
    if (songNo==2) {
      song2.skip(5000);
    }
    if (songNo==3) {
      song3.skip(5000);
    }
    if (songNo==4) {
      song4.skip(5000);
    }
  }
}
//
void skipCircleDiameter() {
  if (mouseX > skipEllipseX) {
    skipXLength = mouseX - skipEllipseX;
  } else {
    skipXLength = skipEllipseX - mouseX;
  }
  if (mouseY > skipEllipseY) {
    skipYLength = mouseY - skipEllipseY;
  } else {
    skipYLength = skipEllipseY - mouseY;
  }
  if (sqrt(sq(skipXLength)+sq(skipYLength)) < skipEllipseDiameter/2) {
    insideSkipCircle=true;
  } else {
    insideSkipCircle=false;
  }
}
//
void insideSkipCircleTrue() {
  if (insideSkipCircle==true) {
    fill(black);
    noStroke();
    rect(width*204/288, height*35/40, width*1/20, width*1/50);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("skip 5s", width*204/288, height*35/40, width*1/20, width*1/50);
    fill(black);
  } else {
    noStroke();
    fill(black);
    rect(width*204/288, height*35/40, width*1/20, width*1/50);
  }
}
