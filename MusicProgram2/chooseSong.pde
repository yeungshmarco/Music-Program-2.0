void chooseSong() {
  imageMode(CENTER);
  pic1Adjusted();
  pic2Adjusted();
  pic3Adjusted();
  pic4Adjusted();
  imageMode(CORNER);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("1", width*23/32, height*3/12);
  text("2", width*23/32, height*5/12);
  text("3", width*23/32, height*7/12);
  text("4", width*23/32, height*9/12);
  if (songNo==1) {
    stroke(white);
    line(width*45/64, height*9/48, width*63/64, height*9/48);
  }
}
