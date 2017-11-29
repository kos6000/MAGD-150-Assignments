import processing.video.*;
import processing.sound.*;

Movie demo;
PImage weird;
SoundFile Pianoman;

void setup(){
  size(620,970);
  demo = new Movie(this,"martialDemo.MP4");
  demo.loop();
  
  weird = loadImage("datFace.jpg");
  
  
  
}

void movieEvent(Movie demo){
    demo.read();
  }

void draw(){
  tint(255);
  image(demo,0,0,620,970);
 
 tint(155,1550,30);
  image(weird,-100,760,225,225);
}