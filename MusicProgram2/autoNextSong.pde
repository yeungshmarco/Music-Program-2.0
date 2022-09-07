void autoNextSong() {
  if (songLoop==false && song1.position() >= song1.length()-song1.length()/1000) {
    songNo1NextSong=false;
    songNo2NextSong=true;
    songNo3NextSong=false;
    songNo4NextSong=false;
    songNo1PrevSong=false;
    songNo2PrevSong=false;
    songNo3PrevSong=false;
    songNo4PrevSong=false;
  }
  if (songLoop==false && song2.position() >= song2.length()-song2.length()/1000) {
    songNo1NextSong=false;
    songNo2NextSong=false;
    songNo3NextSong=true;
    songNo4NextSong=false;
    songNo1PrevSong=false;
    songNo2PrevSong=false;
    songNo3PrevSong=false;
    songNo4PrevSong=false;
  }
  if (songLoop==false && song3.position() >= song3.length()-song3.length()/1000) {
    songNo1NextSong=false;
    songNo2NextSong=false;
    songNo3NextSong=false;
    songNo4NextSong=true;
    songNo1PrevSong=false;
    songNo2PrevSong=false;
    songNo3PrevSong=false;
    songNo4PrevSong=false;
  }
  if (songLoop==false && song4.position() >= song4.length()-song4.length()/1000) {
    songNo1NextSong=true;
    songNo2NextSong=false;
    songNo3NextSong=false;
    songNo4NextSong=false;
    songNo1PrevSong=false;
    songNo2PrevSong=false;
    songNo3PrevSong=false;
    songNo4PrevSong=false;
  }
}
