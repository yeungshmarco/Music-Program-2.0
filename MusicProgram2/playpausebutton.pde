//Global Variables
float pauseEllipseX, pauseEllipseY, pauseEllipseDiameter;
float pauseTriX1, pauseTriY1, pauseTriX2, pauseTriY2, pauseTriX3, pauseTriY3;
float xLength, yLength;
Boolean insideCircle=false;
//
void pauseButton() {
  pauseEllipseX = width*1/2;
  pauseEllipseY = height*9/10;
  pauseEllipseDiameter = width*1/20;
  fill(white);
  strokeWeight(3);
  ellipse(pauseEllipseX, pauseEllipseY, pauseEllipseDiameter, pauseEllipseDiameter);
  strokeWeight(1);
  //
  pauseTriX1 = width*157/320;
  pauseTriY1 = height*35/40;
  pauseTriX2 = pauseTriX1;
  pauseTriY2 = height*37/40;
  pauseTriX3 = width*33/64;
  pauseTriY3 = pauseEllipseY;
  fill(black);
  triangle(pauseTriX1, pauseTriY1, pauseTriX2, pauseTriY2, pauseTriX3, pauseTriY3);
}
//
void circleDiameter() {
  if (mouseX > pauseEllipseX) {
    xLength = mouseX - pauseEllipseX;
  } else {
    xLength = pauseEllipseX - mouseX;
  }
  if (mouseY > pauseEllipseY) {
    yLength = mouseY - pauseEllipseY;
  } else {
    yLength = pauseEllipseY - mouseY;
  }
  if (sqrt(sq(xLength)+sq(yLength)) < pauseEllipseDiameter/2) {
    insideCircle=true;
  } else {
    insideCircle=false;
  }
}
//
void playPauseButtonMousePressed() {
  if (insideCircle==true && mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
    if (songNo==1) {
      if (song1.isPlaying()) {
        song1.pause();
      } else {
        song1.play();
      }
    }
    if (songNo==2) {
      if (song2.isPlaying()) {
        song2.pause();
      } else {
        song2.play();
      }
    }
    if (songNo==3) {
      if (song3.isPlaying()) {
        song3.pause();
      } else {
        song3.play();
      }
    }
    if (songNo==4) {
      if (song4.isPlaying()) {
        song4.pause();
      } else {
        song4.play();
      }
    }
  }
}
