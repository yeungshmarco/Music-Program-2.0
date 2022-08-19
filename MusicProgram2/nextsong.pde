float nextSongTriX1, nextSongTriY1, nextSongTriX2, nextSongTriY2, nextSongTriX3, nextSongTriY3;
float nextSongLineX1, nextSongLineY1, nextSongLineX2, nextSongLineY2;
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
