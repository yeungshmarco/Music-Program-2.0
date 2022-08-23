float prevSongTriX1, prevSongTriY1, prevSongTriX2, prevSongTriY2, prevSongTriX3, prevSongTriY3;
float prevSongLineX1, prevSongLineY1, prevSongLineX2, prevSongLineY2;
Boolean songNo1PrevSong=false, songNo2PrevSong=false, songNo3PrevSong=false, songNo4PrevSong=false;
//
void prevSongButton() {
  prevSongTriX1 = width*121/288;
  prevSongTriY1 = pauseTriY1+height*1/144;
  prevSongTriX2 = prevSongTriX1;
  prevSongTriY2 = pauseTriY2-height*1/144;
  prevSongTriX3 = width*116/288;
  prevSongTriY3 = pauseTriY3;
  prevSongLineX1 = width*114/288;
  prevSongLineY1 = prevSongTriY1;
  prevSongLineX2 = prevSongLineX1;
  prevSongLineY2 = prevSongTriY2;
  if (mouseX>nextSongTriX1 && mouseX<nextSongLineX1 && mouseY>nextSongTriY1 && mouseY<nextSongTriY2) {
    fill(black);
    noStroke();
    rect(width*175/288, height*35/40, width*1/20, width*1/50);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("Prev. Song", width*175/288, height*35/40, width*1/20, width*1/50);
    fill(black);
  } else {
    noStroke();
    fill(black);
    rect(width*175/288, height*35/40, width*1/20, width*1/50);
    fill(black);
  }
  strokeWeight(5);
  stroke(black);
  triangle(prevSongTriX1, prevSongTriY1, prevSongTriX2, prevSongTriY2, prevSongTriX3, prevSongTriY3);
  line(prevSongLineX1, prevSongLineY1, prevSongLineX2, prevSongLineY2);
  noStroke();
}
//
//
void prevSongButtonMousePressed() {
  if (mouseX>prevSongLineX1 && mouseX<prevSongTriX1 && mouseY>prevSongLineY1 && mouseY<prevSongLineY2) {
    if (songNo==1) {
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=true;
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
    }
    if (songNo==2) {
      songNo1PrevSong=true;
      songNo2PrevSong=false;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
    }
    if (songNo==3) {
      songNo1PrevSong=false;
      songNo2PrevSong=true;
      songNo3PrevSong=false;
      songNo4PrevSong=false;
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
    }
    if (songNo==4) {
      songNo1PrevSong=false;
      songNo2PrevSong=false;
      songNo3PrevSong=true;
      songNo4PrevSong=false;
      songNo1NextSong=false;
      songNo2NextSong=false;
      songNo3NextSong=false;
      songNo4NextSong=false;
    }
  }
}
//
void ifSong1234IsTruePrevSong() {
  if (songNo1PrevSong==true) {
    song2.rewind();
    song2.pause();
    songNo=1;
  }
  if (songNo2PrevSong==true) {
    song3.rewind();
    song3.pause();
    songNo=2;
  }
  if (songNo3PrevSong==true) {
    song4.rewind();
    song4.pause();
    songNo=3;
  }
  if (songNo4PrevSong==true) {
    song1.rewind();
    song1.pause();
    songNo=4;
  }
}
