import processing.pdf.*;

PFont title1;
PFont title2;

void setup(){
  
  beginRecord(PDF,"best movie.pdf");
  
  background(120,120,120);
  size(1000,1200);
  colorMode(RGB,255,255,255,100);

title2 = createFont("Jokerman-Regular.vlw",48);

title1 = createFont("Cambria-BoldItalic.vlw",48);
}

void draw(){
  
  fill(240,240,240,100);
  textAlign(LEFT,TOP);   //the first text font "horatio films"
  textFont(title2);
  text("Horatio films presents...",325,150);
  
  if(mousePressed){
    fill(240,240,240,2);  
    textAlign(LEFT,TOP);            //the second text font "windfall forsaken"
                                    //if any of the mouse triggeres are pressed and held
    textFont(title1,48);         //then the next text fades in.
    text("Windfall of the Forsaken",400,300);
  }
 poster();

 endRecord();
}

void poster(){
  fill(74,45,23);          //then from here down is the tree, weird rock and ground
  rect(0,1000,1000,300);
  fill(10,10,10);
  rect(-50,300,175,775);
  rect(125,1050,70,25);
  rect(180,1050,25,60);
  rect(100,1050,25,80);
  rect(100,1105,-40,25);
  rect(60,1130,25,40);
  rect(-10,1050,25,80);
  rect(-10,1130,45,25);
  rect(16,1153,20,30);
  rect(30,300,40,-200);
  rect(30,100,190,40);
  rect(140,100,30,120);
  rect(105,30,30,100);
  rect(70,285,190,35);
  rect(230,320,30,130);
  rect(260,360,60,30);
  rect(290,390,30,160);
  rect(180,320,30,180);
  rect(190,100,30,-120);
  rect(220,50,60,23);
  rect(258,50,22,-100);
  rect(-10,35,23,270);  
  rect(125,655,90,25);
  rect(190,680,25,40);
  rect(190,720,-25,24);
  rect(190,720,60,24);
  rect(165,744,24,50);
  rect(230,744,20,110);
  rect(165,794,75,23);
  rect(200,854,70,20);
  rect(200,854,17,80);
  rect(253,854,17,55);
  
  quad(600,900,740,1050,780,1150,365,1111);
}