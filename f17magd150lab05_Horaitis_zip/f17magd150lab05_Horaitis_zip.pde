float sx = 255;
float sy = 270;
float sw = 700;
float sh = 300;
float rx = 325;
float ry = 655;
float rw = 175;
float rh = 85;
float cx = 725;
float cy = 695;
float cs = 100;
String r = "Roar";
String b = "Boop";

void setup(){
  size(1200,1000);
  colorMode(RGB,255,255,255,100);
}

void draw(){
background(221,116,16);
frame();
screen();
rbutton();
cbutton();

fill(255,0,0);
textSize(50);
text(r,365,715);

fill(53,247,237);
textSize(30);
text(b,690,706);
}

void frame(){
  fill(0);
  triangle(225,700,300,700,175,1220);
  triangle(900,700,975,700,1025,1220);
  quad(250,-100,265,-120,465,225,450,235);
  quad(650,-100,665,-120,450,225,460,250);
  fill(71,37,5);
  rect(150,200,900,600);
 }
 
 void rbutton(){
   fill(15,94,174);
   rect(rx,ry,rw,rh);
   if(mousePressed){
    if(mouseX>rx && mouseX <rx+rw && mouseY>ry && mouseY <ry+rh){
      
      fill(20,94,90);
      rect(sx,sy,sw,sh);
      fill(0);
      beginShape();
      vertex(253,460);
      vertex(296,420);
      vertex(360,380);
      vertex(440,367);
      vertex(550,375);
      vertex(510,450);
      vertex(486,390);
      vertex(469,460);
      vertex(448,410);
      vertex(425,425);
      vertex(415,450);
      vertex(430,510);
      vertex(480,525);
      vertex(490,480);
      vertex(530,535);
      vertex(490,570);
      vertex(273,570);
      vertex(253,570);
      endShape();
    }    
   }   
 }
 
 void cbutton(){
   fill(251,202,136);
   ellipse(cx,cy,cs,cs);
   if(mousePressed){
     if(mouseX>665 && mouseX <775 && mouseY>640 && mouseY <747){
  
       fill(64,216,8);
       rect(sx,sy,sw,sh);
       fill(103,24,79);
       noStroke();
       ellipse(750,380,75,75);
       rect(740,385,20,150);
       quad(740,395,820,520,810,520,740,415);
       quad(740,415,740,435,670,530,660,520);
       rect(720,535,60,36);
       
     }
   }
 }
 
 void screen(){
   fill(255);
  rect(sx,sy,sw,sh);
 }