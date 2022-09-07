float loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight;
Boolean songLoop = false;
//
void loopButton() {
  loopButtonX = width*217/288;
  loopButtonY = pauseEllipseY-width*1/50;
  loopButtonWidth = width*1/30;
  loopButtonHeight = width*1/25;
  fill(black);
  rect(loopButtonX, loopButtonY, loopButtonWidth, loopButtonHeight);
  //Upper Loop Arrow
  if (songLoop==true) {
    stroke(green);
    noFill();
    arc(width*222/288, pauseEllipseY, width*1/30, width*1/40, radians(180), radians(270));
    arc(width*221/288, pauseEllipseY, width*1/30, width*1/40, radians(0), radians(90));
    fill(green);
  } else {
    stroke(white);
    noFill();
    arc(width*222/288, pauseEllipseY, width*1/30, width*1/40, radians(180), radians(270));
    arc(width*221/288, pauseEllipseY, width*1/30, width*1/40, radians(0), radians(90));
    fill(white);
  }
  line(width*222/288, pauseEllipseY-width*1/80, width*226/288, pauseEllipseY-width*1/80);
  triangle(width*224.8/288, pauseEllipseY-width*1/60, width*224.8/288, pauseEllipseY-width*1/120, width*226/288, pauseEllipseY-width*1/80);
  //Lower Loop Arrow
  line(width*218/288, pauseEllipseY+width*1/80, width*222/288, pauseEllipseY+width*1/80);
  triangle(width*217.8/288, pauseEllipseY+width*1/80, width*219/288, pauseEllipseY+width*1/110, width*219/288, pauseEllipseY+width*1/65);
  stroke(black);
}
//
void loopButtonMousePressed() {
  if (mouseX>loopButtonX && mouseX<loopButtonX+loopButtonWidth && mouseY>loopButtonY && mouseY<loopButtonY+loopButtonHeight) {
    if (songLoop==true) {
      songLoop=false;
    } else {
      songLoop=true;
    }
    if (songLoop==true) {
      if (songNo==1) {
        song1.loop();
      }
      if (songNo==2) {
        song2.loop();
      }
      if (songNo==3) {
        song3.loop();
      }
      if (songNo==4) {
        song4.loop();
      }
    } else if (songNo==1 && song1.position()>song1.length()-song1.length()/1000) {
      songNo1NextSong=false;
      songNo2NextSong=true;
      songNo3NextSong=false;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    } else if (songNo==2 && song2.position()>song2.length()-song2.length()/1000) {
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=true;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    } else if (songNo==3 && song3.position()>song3.length()-song3.length()/1000) {
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=true;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    } else if (songNo==4 && song4.position()>song4.length()-song4.length()/1000) {
      songNo1NextSong=true;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    } else {
      if (songNo==1) {
        song1.loop();
      }
      if (songNo==2) {
        song2.loop();
      }
      if (songNo==3) {
        song3.loop();
      }
      if (songNo==4) {
        song4.loop();
      }
    }
  }
}
