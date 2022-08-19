float nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3;
float nextSongLineX1, nextSongLineY1, nextSongLineX2, nextSongLineY2;
Boolean songNo1=false, songNo2=false, songNo3=false, songNo4=false;
//
void nextSongButton() {
  nextSongTriX1 = width*167/288;
  nextSongTriY1 = pauseTriY1+height*1/144;
  nextSongTriX2 = nextSongTriX1;
  nextSongTriY2 = pauseTriY2-height*1/144;
  nextSongTriX3 = width*172/288;
  nextSongTriY3 = pauseTriY3;
  nextSongLineX1 = width*174/288;
  nextSongLineY1 = nextSongTriY1;
  nextSongLineX2 = nextSongLineX1;
  nextSongLineY2 = nextSongTriY2;
  strokeWeight(5);
  stroke(black);
  triangle(nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3);
  line(nextSongLineX1, nextSongLineY1, nextSongLineX2, nextSongLineY2);
  noStroke();
}
//
void nextSongButtonMousePressed() {
  if (mouseX>nextSongTriX1 && mouseX<nextSongTriX1+(nextSongLineX1-nextSongTriX1) && mouseY>nextSongTriY1 && mouseY<nextSongTriY2) {
    if (songNo==1) {
      songNo2=true;
      song1.rewind();
      song1.pause();
    }
    if (songNo==2) {
      songNo3=true;
      song2.rewind();
      song2.pause();
    }
    if (songNo==3) {
      songNo4=true;
      song3.rewind();
      song3.pause();
    }
    if (songNo==4) {
      songNo1=true;
      song4.rewind();
      song4.pause();
    }
  }
}
//
void ifSong1IsTrue() {
  if (songNo1==true) {
    songNo=1;
  }
}
void ifSong2IsTrue() {
  if (songNo2==true) {
    songNo=2;
  }
}
void ifSong3IsTrue() {
  if (songNo3==true) {
    songNo=3;
  }
}
void ifSong4IsTrue() {
  if (songNo4==true) {
    songNo=4;
  }
}
