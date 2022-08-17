import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
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
  song1 = minim.loadFile("redsong.mp3");
  songMetaData1 = song1.getMetaData();
  song2 = minim.loadFile("official_music_video_6469774959983300664.mp3");
  songMetaData2 = song2.getMetaData();
  song3 = minim.loadFile("back_number_8304614218291898954.mp3");
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
  pauseButton();
  circleDiameter();
  quitButton();
  //
  if (insideCircle==true && mouseX>pauseEllipseX-pauseEllipseDiameter/2 && mouseX<pauseEllipseX+pauseEllipseDiameter/2 && mouseY>pauseEllipseY-pauseEllipseDiameter/2 && mouseY<pauseEllipseY+pauseEllipseDiameter/2) {
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
    pic1();
    textAlign(CENTER, CENTER);
    textSize(40);
    fill(black);
    text("Good Lil Bro - Red Song", width*0, height*13/20, width, height*1/5);
    fill(defaultGrey);
    noStroke();
    rect(width*2/5, height*25/32, width*3/40, height*1/16);
    stroke(1);
    fill(black);
    if ((song1.position()/1000)-((song1.position()/1000)/60 * 60) <=9) {
      text("0", width*242/576, height*13/16);
    }
    if (song1.position()/1000 <=9) {
      text("0", width*131/288, height*13/16);
    }
    textAlign(RIGHT, CENTER);
    text((song1.position()/1000/60), width*254/576, height*13/16);
    text(":", width*129/288, height*259/320);
    text((song1.position()/1000)-((song1.position()/1000)/60 * 60), width*19/40, height*13/16);
  }
}
void keyPressed() {
  if ( key=='f' || key=='F' ) song1.skip(5000);
  if ( key=='r' || key=='R' ) song1.skip(-5000);
}
//
void mousePressed() {
  quitButtonMousePressed();
  playPauseButtonMousePressed();
}
//END MAIN Program
