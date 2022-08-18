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
