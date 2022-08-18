void songNo1() {
  if (songNo == 1) {
    fill(defaultGrey);
    rect(0, height*1/3, width, height*7/15);
    pic1();
    textAlign(CENTER, CENTER);
    textSize(40);
    fill(black);
    text("Good Lil Bro - Red Song", width*0, height*13/20, width, height*1/5);
    fill(defaultGrey);
    noStroke();
    rect(width*2/5, height*25/32, width*1/4, height*1/16);
    stroke(1);
    fill(black);
    textAlign(RIGHT, CENTER);
    if (song1.position()/1000/60 <=9) {
      text("0", width*247/576, height*13/16);
    }
    if ((song1.position()/1000)-((song1.position()/1000)/60 * 60) <=9) {
      text("0", width*185/400, height*13/16);
    }
    text((song1.position()/1000/60), width*254/576, height*13/16);
    text(":", width*129/288, height*259/320);
    text((song1.position()/1000)-((song1.position()/1000)/60 * 60), width*19/40, height*13/16);
    textAlign(CENTER, CENTER);
    text("/", width*1/2, height*13/16);
    textAlign(RIGHT, CENTER);
    text("0", width*309/576, height*13/16);
    text((song1.length()/1000/60), width*317/576, height*13/16);
    text(":", width*161/288, height*259/320);
    text((song1.length()/1000)-((song1.length()/1000)/60 * 60), width*47/80, height*13/16);
  }
}
//
void songNo2() {
  if (songNo == 2) {
    fill(defaultGrey);
    rect(0, height*1/3, width, height*7/15);
    pic2();
    textAlign(CENTER, CENTER);
    textSize(40);
    fill(black);
    text("Rokudenashi - One Voice", width*0, height*13/20, width, height*1/5);
    fill(defaultGrey);
    noStroke();
    rect(width*2/5, height*25/32, width*1/4, height*1/16);
    stroke(1);
    fill(black);
    textAlign(RIGHT, CENTER);
    if (song2.position()/1000/60 <=9) {
      text("0", width*247/576, height*13/16);
    }
    if ((song2.position()/1000)-((song2.position()/1000)/60 * 60) <=9) {
      text("0", width*185/400, height*13/16);
    }
    text((song2.position()/1000/60), width*254/576, height*13/16);
    text(":", width*129/288, height*259/320);
    text((song2.position()/1000)-((song2.position()/1000)/60 * 60), width*19/40, height*13/16);
    textAlign(CENTER, CENTER);
    text("/", width*1/2, height*13/16);
    textAlign(RIGHT, CENTER);
    text("0", width*309/576, height*13/16);
    text((song2.length()/1000/60), width*317/576, height*13/16);
    text(":", width*161/288, height*259/320);
    text((song2.length()/1000)-((song2.length()/1000)/60 * 60), width*47/80, height*13/16);
  }
}
