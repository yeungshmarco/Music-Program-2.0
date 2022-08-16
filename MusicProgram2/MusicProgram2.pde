import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
color black=#000000, white=#FFFFFF;
color defaultGrey= #d0cccc;
PFont TimesNewRomanPSMT;
Minim minim;
AudioPlayer song1, song2, song3, song4; //song1 = Bury The Light
AudioMetaData songMetaData1, songMetaData2, songMetaData3, songMetaData4;
Boolean play=false;
int songNo = 1;
//
void setup() {
  fullScreen();
  println ("width:", width, "\t height:", height, "\t displayWidth:", displayWidth, "\t\t displayHeight:", displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Please turn your phone";
  String orientation = ( width >= height ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Display Orientation is good to go");
  } else {
    println(instruct);
  }
  //Minim variables
  minim = new Minim(this);
  song1 = minim.loadFile("Waltz in Low Light - Nat Keefe & Hot Buttered Rum.mp3");
  songMetaData1 = song1.getMetaData();
  song2 = minim.loadFile("Crops - Telecasted.mp3");
  songMetaData2 = song2.getMetaData();
  song3 = minim.loadFile("Illusions - Anno Domini Beats copy.mp3");
  songMetaData3 = song3.getMetaData();
  song4 = minim.loadFile("mp3-now.com - Bury the Light  Vergils battle theme from Devil May Cry 5 Special Edition.mp3");
  songMetaData4 = song4.getMetaData();
  //Meta Data
  println( "Song Length (in milliseconds): ", songMetaData1.length() );
  println( "Song Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  println( "Song Length (in milliseconds): ", songMetaData2.length() );
  println( "Song Length (in seconds): ", songMetaData2.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData2.length()/1000)/60, " minute", (songMetaData2.length()/1000)-((songMetaData2.length()/1000)/60 * 60), " seconds" );
  println( "Song Length (in milliseconds): ", songMetaData3.length() );
  println( "Song Length (in seconds): ", songMetaData3.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData3.length()/1000)/60, " minute", (songMetaData3.length()/1000)-((songMetaData3.length()/1000)/60 * 60), " seconds" );
  println( "Song Length (in milliseconds): ", songMetaData4.length() );
  println( "Song Length (in seconds): ", songMetaData4.length()/1000 );
  println( "Song Length (in minutes & seconds): ", (songMetaData4.length()/1000)/60, " minute", (songMetaData4.length()/1000)-((songMetaData4.length()/1000)/60 * 60), " seconds" );
  //
  TimesNewRomanPSMT = createFont("TimesNewRomanPSMT", 603);
}
//
void draw() {
  fill(black);
  textFont(TimesNewRomanPSMT, 40);
  text("Now Playing:", width*3/10, height*13/20, width*1/5, height*1/5);
  pauseButton();
  //
  if (mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
    fill(black);
    noStroke();
    rect(width*169/320, height*35/40, width*1/20, width*1/50);
    fill(white);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("Play/Pause", width*169/320, height*35/40, width*1/20, width*1/50);
    fill(black);
  } else {
    noStroke();
    fill(defaultGrey);
    rect(width*169/320, height*35/40, width*1/20, width*1/50);
  }
  strokeWeight(1);
  //
  if (songNo == 1) {
    fill(black);
    textAlign(RIGHT, CENTER);
    textSize(40);
    text("Waltz in Low Light", width*3/10, height*13/20, width*3/5, height*1/5);
    fill(defaultGrey);
    noStroke();
    rect(width*1/10, height*3/5, width*1/6, height*1/8);
    stroke(1);
    fill(black);
    text(song1.position()/1000, width*2/10, height*13/20);
  }
}
void keyPressed() {
}
//
void mousePressed() {
  if (mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
    if (song1.isPlaying()) {
      song1.pause();
    } else {
      song1.play();
    }
  }
}
//END MAIN Program
