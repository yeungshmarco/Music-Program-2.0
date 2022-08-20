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
  song1 = minim.loadFile("redsong.mp3"); //Good Lil Bro - Red Song
  songMetaData1 = song1.getMetaData();
  song2 = minim.loadFile("official_music_video_6469774959983300664.mp3"); //Rokudenashi - One Voice
  songMetaData2 = song2.getMetaData();
  song3 = minim.loadFile("back_number_8304614218291898954.mp3"); //back number - Horizon
  songMetaData3 = song3.getMetaData();
  song4 = minim.loadFile("YOASOBI Probably Official Music  Video.mp3"); //Casey Edwards & Victor Borba - Bury the Light
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
  insideCircleTrue();
  //
  nextSongButton();
  songNo1();
  songNo2();
  songNo3();
  songNo4();
  ifSong1234IsTrue();
}
void keyPressed() {
  fastForwardKeyPressed();
  fastForwardBackKeyPressed();
}
//
void mousePressed() {
  quitButtonMousePressed();
  playPauseButtonMousePressed();
  nextSongButtonMousePressed();
}
//END MAIN Program
