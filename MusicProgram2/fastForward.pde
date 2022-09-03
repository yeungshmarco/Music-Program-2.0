float fastForwardButtonX1, fastForwardButtonY1, fastForwardButtonX2, fastForwardButtonY2, fastForwardButtonX3, fastForwardButtonY3;
float fastForwardButtonX4, fastForwardButtonY4, fastForwardButtonX5, fastForwardButtonY5, fastForwardButtonX6, fastForwardButtonY6;
float fastForwardEllipseX1, fastForwardEllipseY1, fastForwardEllipseDiameter;
void fastForwardKeyPressed() {
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
void fastForwardButton() {
  fastForwardEllipseX1 = width*195/288;
  fastForwardEllipseY1 = pauseEllipseY;
  fastForwardEllipseDiameter = pauseEllipseDiameter;
  fastForwardButtonX1 = width*191/288;
  fastForwardButtonY1 = pauseTriY1+width*1/576;
  fastForwardButtonX2 = fastForwardButtonX1;
  fastForwardButtonY2 = pauseTriY2-width*1/576;
  fastForwardButtonX3 = width*197/288;
  fastForwardButtonY3 = nextSongTriY3;
  fastForwardButtonX4 = width*195/288;
  fastForwardButtonY4 = fastForwardButtonY1;
  fastForwardButtonX5 = fastForwardButtonX4;
  fastForwardButtonY5 = fastForwardButtonY2;
  fastForwardButtonX6 = width*201/288;
  fastForwardButtonY6 = fastForwardButtonY3;
  fill(white);
  stroke(black);
  strokeWeight(3);
  ellipse(fastForwardEllipseX1, fastForwardEllipseY1, fastForwardEllipseDiameter, fastForwardEllipseDiameter);
  fill(black);
  noStroke();
  triangle(fastForwardButtonX4, fastForwardButtonY4, fastForwardButtonX5, fastForwardButtonY5, fastForwardButtonX6, fastForwardButtonY6);
  triangle(fastForwardButtonX1, fastForwardButtonY1, fastForwardButtonX2, fastForwardButtonY2, fastForwardButtonX3, fastForwardButtonY3);
  fill(white);
}
//
void fastForwardButtonMousePressed() {
  //NOT FINISHED
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
