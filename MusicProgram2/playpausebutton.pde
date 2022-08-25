//Global Variables
float pauseEllipseX, pauseEllipseY, pauseEllipseDiameter;
float pauseTriX1, pauseTriY1, pauseTriX2, pauseTriY2, pauseTriX3, pauseTriY3;
float pauseLine1X1, pauseLine1Y1, pauseLine1X2, pauseLine1Y2, pauseLine2X1, pauseLine2Y1, pauseLine2X2, pauseLine2Y2;
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
  pauseLine1X1 = width*63/128;
  pauseLine1Y1 = height*71/80;
  pauseLine1X2 = pauseLine1X1;
  pauseLine1Y2 = height*73/80;
  pauseLine2X1 = width*65/128;
  pauseLine2Y1 = pauseLine1Y1;
  pauseLine2X2 = pauseLine2X1;
  pauseLine2Y2 = pauseLine1Y2;
  fill(black);
  if (song1.isPlaying() || song2.isPlaying() || song3.isPlaying() || song4.isPlaying()) {
    fill(white);
    stroke(black);
    strokeWeight(3);
    ellipse(pauseEllipseX, pauseEllipseY, pauseEllipseDiameter, pauseEllipseDiameter);
    strokeWeight(15);
    line(pauseLine1X1, pauseLine1Y1, pauseLine1X2, pauseLine1Y2);
    line(pauseLine2X1, pauseLine2Y1, pauseLine2X2, pauseLine2Y2);
    noStroke();
  } else {
    fill(white);
    stroke(black);
    strokeWeight(3);
    ellipse(pauseEllipseX, pauseEllipseY, pauseEllipseDiameter, pauseEllipseDiameter);
    fill(black);
    triangle(pauseTriX1, pauseTriY1, pauseTriX2, pauseTriY2, pauseTriX3, pauseTriY3);
    noStroke();
  }
  fill(white);
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
void playPauseButtonKeyPressed() {
  if (key==' ') {
    if (songNo==1) {
      if (song1.isPlaying()) {
        song1.pause();
      } else if (song1.position() >= song1.length()-song1.length()/1000) {
        songNo=2;
        song1.rewind();
      } else {
        song1.play();
      }
    }
    if (songNo==2) {
      if (song2.isPlaying()) {
        song2.pause();
      } else if (song2.position() >= song2.length()-song2.length()/1000) {
        songNo=3;
        song2.rewind();
      } else {
        song2.play();
      }
    }
    if (songNo==3) {
      if (song3.isPlaying()) {
        song3.pause();
      } else if (song3.position() >= song3.length()-song3.length()/1000) {
        songNo=4;
        song3.rewind();
      } else {
        song3.play();
      }
    }
    if (songNo==4) {
      if (song4.isPlaying()) {
        song4.pause();
      } else if (song4.position() >= song4.length()-song4.length()/300) {
        songNo=1;
        song4.rewind();
      } else {
        song4.play();
      }
    }
  }
}
//
void playPauseButtonMousePressed() {
  if (insideCircle==true && mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
    if (songNo==1) {
      if (song1.isPlaying()) {
        song1.pause();
      } else if (song1.position() >= song1.length()-song1.length()/1000) {
        songNo1NextSong=false;
        songNo2NextSong=true;
        songNo3NextSong=false;
        songNo4NextSong=false;
        songNo1PrevSong=false;
        songNo2PrevSong=false;
        songNo3PrevSong=false;
        songNo4PrevSong=false;
      } else {
        song1.play();
      }
    }
    if (songNo==2) {
      if (song2.isPlaying()) {
        song2.pause();
      } else if (song2.position() >= song2.length()-song2.length()/1000) {
        songNo1NextSong=false;
        songNo2NextSong=false;
        songNo3NextSong=true;
        songNo4NextSong=false;
        songNo1PrevSong=false;
        songNo2PrevSong=false;
        songNo3PrevSong=false;
        songNo4PrevSong=false;
      } else {
        song2.play();
      }
    }
    if (songNo==3) {
      if (song3.isPlaying()) {
        song3.pause();
      } else if (song3.position() >= song3.length()-song3.length()/1000) {
        songNo1NextSong=false;
        songNo2NextSong=false;
        songNo3NextSong=false;
        songNo4NextSong=true;
        songNo1PrevSong=false;
        songNo2PrevSong=false;
        songNo3PrevSong=false;
        songNo4PrevSong=false;
      } else {
        song3.play();
      }
    }
    if (songNo==4) {
      if (song4.isPlaying()) {
        song4.pause();
      } else if (song4.position() >= song4.length()-song4.length()/1000) {
        songNo1NextSong=true;
        songNo2NextSong=false;
        songNo3NextSong=false;
        songNo4NextSong=false;
        songNo1PrevSong=false;
        songNo2PrevSong=false;
        songNo3PrevSong=false;
        songNo4PrevSong=false;
      } else {
        song4.play();
      }
    }
  }
}
//
void insideCircleTrue() {
  if (insideCircle==true && mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
    fill(black);
    noStroke();
    rect(width*169/320, height*35/40, width*1/20, width*1/50);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    if (song1.isPlaying() || song2.isPlaying() || song3.isPlaying() || song4.isPlaying()) {
      text("Pause", width*169/320, height*35/40, width*1/20, width*1/50);
    } else {
      text("Play", width*169/320, height*35/40, width*1/20, width*1/50);
    }
    fill(black);
  } else {
    noStroke();
    fill(black);
    rect(width*169/320, height*35/40, width*1/20, width*1/50);
    fill(black);
  }
}
