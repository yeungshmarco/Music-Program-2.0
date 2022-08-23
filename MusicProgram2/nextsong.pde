float nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3;
float nextSongLineX1, nextSongLineY1, nextSongLineX2, nextSongLineY2;
Boolean songNo1NextSong=false, songNo2NextSong=false, songNo3NextSong=false, songNo4NextSong=false;
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
  if (mouseX>nextSongTriX1 && mouseX<nextSongLineX1 && mouseY>nextSongTriY1 && mouseY<nextSongTriY2) {
    if (songNo==1) {
      songNo1NextSong=false;
      songNo2NextSong=true;
      songNo3NextSong=false;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    }
    if (songNo==2) {
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=true;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    }
    if (songNo==3) {
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=true;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    }
    if (songNo==4) {
      songNo1NextSong=true;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
    }
  }
}
//
void ifSong1234IsTrueNextSong() {
  if (songNo1NextSong==true) {
    song4.rewind();
    song4.pause();
    songNo=1;
  } 
  if (songNo2NextSong==true) {
    song1.rewind();
    song1.pause();
    songNo=2;
  } 
  if (songNo3NextSong==true) {
    song2.rewind();
    song2.pause();
    songNo=3;
  }
  if (songNo4NextSong==true) {
    song3.rewind();
    song3.pause();
    songNo=4;
  }
}
