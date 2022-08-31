PFont TimesNewRomanPSBoldMT;
//Boolean songNo1Playing=false;

void chooseSong() {
  TimesNewRomanPSBoldMT = createFont("TimesNewRomanPS-BoldMT", 601);
  imageMode(CENTER);
  pic1Adjusted();
  pic2Adjusted();
  pic3Adjusted();
  pic4Adjusted();
  imageMode(CORNER);
  fill(black);
  noStroke();
  rect(width*27/32, height*19/96, width*1/8, height*1/10);
  stroke(5);
  fill(white);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("1", width*23/32, height*3/12);
  text("2", width*23/32, height*5/12);
  text("3", width*23/32, height*7/12);
  text("4", width*23/32, height*9/12);
  textAlign(LEFT, CENTER);
  text("Red Song", width*55/64, height*21/96);
  text("One Voice", width*55/64, height*37/96);
  text("Horizon", width*55/64, height*53/96);
  text("Probably", width*55/64, height*69/96);
  textFont(TimesNewRomanPSBoldMT, 15);
  fill(defaultGrey);
  text("Good Lil Bro", width*55/64, height*25/96); //+height*4/96
  text("Rokudenashi", width*55/64, height*41/96);
  text("back number", width*55/64, height*57/96);
  text("YOASOBI", width*55/64, height*73/96);
  textAlign(CENTER, CENTER);
  if (songNo==1) {
    stroke(white);
    line(width*22/32, height*9/48, width*22/32, height*15/48); //Left Vertical Line
    line(width*22/32, height*9/48, width*63/64, height*9/48); //Upper Horizontal Line
    line(width*22/32, height*15/48, width*63/64, height*15/48); //Bottom Horizontal Line
    line(width*63/64, height*9/48, width*63/64, height*15/48); //Right Vertical Line
  } else {
    stroke(black);
    line(width*22/32, height*9/48, width*22/32, height*15/48); //Left Vertical Line
    line(width*22/32, height*9/48, width*63/64, height*9/48); //Upper Horizontal Line
    line(width*22/32, height*15/48, width*63/64, height*15/48); //Bottom Horizontal Line
    line(width*63/64, height*9/48, width*63/64, height*15/48); //Right Vertical Line
    stroke(white);
  }
  if (songNo==2) {
    stroke(white);
    line(width*22/32, height*17/48, width*22/32, height*23/48); //Left Vertical Line
    line(width*22/32, height*17/48, width*63/64, height*17/48); //Upper Horizontal Line
    line(width*22/32, height*23/48, width*63/64, height*23/48); //Bottom Horizontal Line
    line(width*63/64, height*17/48, width*63/64, height*23/48); //Right Vertical Line
    stroke(black);
  } else {
    stroke(black);
    line(width*22/32, height*17/48, width*22/32, height*23/48); //Left Vertical Line
    line(width*22/32, height*17/48, width*63/64, height*17/48); //Upper Horizontal Line
    line(width*22/32, height*23/48, width*63/64, height*23/48); //Bottom Horizontal Line
    line(width*63/64, height*17/48, width*63/64, height*23/48); //Right Vertical Line
    stroke(white);
  }
  if (songNo==3) {
    stroke(white);
    line(width*22/32, height*25/48, width*22/32, height*31/48); //Left Vertical Line
    line(width*22/32, height*25/48, width*63/64, height*25/48); //Upper Horizontal Line
    line(width*22/32, height*31/48, width*63/64, height*31/48); //Bottom Horizontal Line
    line(width*63/64, height*25/48, width*63/64, height*31/48); //Right Vertical Line
    stroke(black);
  } else {
    stroke(black);
    line(width*22/32, height*25/48, width*22/32, height*31/48); //Left Vertical Line
    line(width*22/32, height*25/48, width*63/64, height*25/48); //Upper Horizontal Line
    line(width*22/32, height*31/48, width*63/64, height*31/48); //Bottom Horizontal Line
    line(width*63/64, height*25/48, width*63/64, height*31/48); //Right Vertical Line
    stroke(white);
  }
  if (songNo==4) {
    stroke(white);
    line(width*22/32, height*33/48, width*22/32, height*39/48); //Left Vertical Line
    line(width*22/32, height*33/48, width*63/64, height*33/48); //Upper Horizontal Line
    line(width*22/32, height*39/48, width*63/64, height*39/48); //Bottom Horizontal Line
    line(width*63/64, height*33/48, width*63/64, height*39/48); //Right Vertical Line
    stroke(black);
  } else {
    stroke(black);
    line(width*22/32, height*33/48, width*22/32, height*39/48); //Left Vertical Line
    line(width*22/32, height*33/48, width*63/64, height*33/48); //Upper Horizontal Line
    line(width*22/32, height*39/48, width*63/64, height*39/48); //Bottom Horizontal Line
    line(width*63/64, height*33/48, width*63/64, height*39/48); //Right Vertical Line
    stroke(white);
  }
}
