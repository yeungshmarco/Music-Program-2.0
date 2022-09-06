float reverseButtonX1, reverseButtonY1, reverseButtonX2, reverseButtonY2, reverseButtonX3, reverseButtonY3;
float reverseButtonX4, reverseButtonY4, reverseButtonX5, reverseButtonY5, reverseButtonX6, reverseButtonY6;
float reverseEllipseX, reverseEllipseY, reverseEllipseDiameter;
float reverseXLength, reverseYLength;
Boolean insideReverseCircle=false;
//
void reverseKeyPressed() {
  if ( keyCode == LEFT ) {
    if (songNo==1) {
      song1.skip(-5000);
    }
    if (songNo==2) {
      song2.skip(-5000);
    }
    if (songNo==3) {
      song3.skip(-5000);
    }
    if (songNo==4) {
      song4.skip(-5000);
    }
  }
}
//
void reverseButton() {
  reverseEllipseX = width*91/288;
  reverseEllipseY = skipEllipseY;
  reverseEllipseDiameter = skipEllipseDiameter;
  reverseButtonX1 = width*85.5/288;
  reverseButtonY1 = skipButtonY3;
  reverseButtonX2 = width*91.5/288;
  reverseButtonY2 = skipButtonY1;
  reverseButtonX3 = reverseButtonX2;
  reverseButtonY3 = skipButtonY2;
  reverseButtonX4 = width*89.5/288;
  reverseButtonY4 = reverseButtonY1;
  reverseButtonX5 = width*95.5/288;
  reverseButtonY5 = reverseButtonY2;
  reverseButtonX6 = reverseButtonX5;
  reverseButtonY6 = reverseButtonY3;
  fill(white);
  stroke(black);
  strokeWeight(3);
  ellipse(reverseEllipseX, reverseEllipseY, reverseEllipseDiameter, reverseEllipseDiameter);
  fill(black);
  noStroke();
  triangle(reverseButtonX4, reverseButtonY4, reverseButtonX5, reverseButtonY5, reverseButtonX6, reverseButtonY6);
  triangle(reverseButtonX1, reverseButtonY1, reverseButtonX2, reverseButtonY2, reverseButtonX3, reverseButtonY3);
  fill(white);
}
//
void reverseCircleDiameter() {
  if (mouseX > reverseEllipseX) {
    reverseXLength = mouseX - reverseEllipseX;
  } else {
    reverseXLength = reverseEllipseX - mouseX;
  }
  if (mouseY > reverseEllipseY) {
    reverseYLength = mouseY - reverseEllipseY;
  } else {
    reverseYLength = reverseEllipseY - mouseY;
  }
  if (sqrt(sq(reverseXLength)+sq(reverseYLength)) < reverseEllipseDiameter/2) {
    insideReverseCircle=true;
  } else {
    insideReverseCircle=false;
  }
}
//
void reverseButtonMousePressed() {
  if (insideReverseCircle==true) {
    if (songNo==1) {
      song1.skip(-5000);
    }
    if (songNo==2) {
      song2.skip(-5000);
    }
    if (songNo==3) {
      song3.skip(-5000);
    }
    if (songNo==4) {
      song4.skip(-5000);
    }
  }
}
//
void insideReverseCircleTrue() {
  if (insideReverseCircle==true) {
    fill(black);
    noStroke();
    rect(width*98/288, height*35/40, width*1/20, width*1/50);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("back 5s", width*98/288, height*35/40, width*1/20, width*1/50);
    fill(black);
  } else {
    noStroke();
    fill(black);
    rect(width*98/288, height*35/40, width*1/20, width*1/50);
  }
}
