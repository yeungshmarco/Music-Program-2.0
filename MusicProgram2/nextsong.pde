float nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3;
float nextSongLineX1, nextSongLineY1, nextSongLineX2, nextSongLineY2;
//
void nextSongButton() {
  nextSongTriX1 = width*167/288;
  nextSongTriY1 = pauseTriY1;
  nextSongTriX2 = nextSongTriX1;
  nextSongTriY2 = pauseTriY2;
  nextSongTriX3 = width*175/288;
  nextSongTriY3 = pauseTriY3;
  
  triangle(nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3);
}
