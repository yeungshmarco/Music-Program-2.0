PImage pic1, pic2, pic3, pic4;
//
void pic1() {
  pic1 = loadImage("ccppic.jpg"); //424x288
  image(pic1, width*1/2.8, height*1/2.94, width*1/3.4, height*1/3.125);
}
void pic2() {
  pic2 = loadImage("rokudenashionevoice.jpeg"); //320x180
  image(pic2, width*3.5/9, height*2/5, width*1/4.5, height*1/5);
}
void pic3() {
  pic3 = loadImage("backnumber.jpeg"); //675x675
  image(pic3, width*2/5, height*1/3.125, width*1/5, width*1/5);
}
void pic4() {
  pic4 = loadImage("yoasobiprobably.jpeg"); //225x225
  image(pic4, width*2/5, height*1/3.125, width*1/5, width*1/5);
}
//
void pic1Adjusted() {
  pic1 = loadImage("ccppic.jpg"); //424x288
  image(pic1, width*4/5, height*3/12, width*1/10.2, height*1/9.375);
}
void pic2Adjusted() {
  pic2 = loadImage("rokudenashionevoice.jpeg"); //320x180
  image(pic2, width*4/5, height*5/12, width*1/10.2, height*1/9.375);
}
void pic3Adjusted() {
  pic3 = loadImage("backnumber.jpeg"); //675x675
  image(pic3, width*4/5, height*7/12, width*1/15, width*1/15);
}
void pic4Adjusted() {
  pic4 = loadImage("yoasobiprobably.jpeg"); //225x225
  image(pic4, width*4/5, height*9/12, width*1/15, width*1/15);
}
