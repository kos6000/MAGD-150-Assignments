FireBreath [] fire = new FireBreath[10];

PVector Fposition;
PVector Fvelocity; 

void setup(){
  size(1000,800);
  
  colorMode(RGB,255,255,255,100);
  
  for(int i = 0; i < fire.length; i++){
    fire[i] = new FireBreath();
  }
}

void draw(){
  background(255,22,107);
  strokeWeight(3);
  arms_stick();
  Fbreather();
  
  for(int i = 0; i < fire.length; i++){
    fire[i].update();
    fire[i].display();
  }
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(800,470);
  
  mouse.sub(center);
  mouse.normalize();
  mouse.mult(-100);
  
  float m =mouse.mag();
  translate(800,470);
  stroke(0);
  strokeWeight(10);
  line(0,0,mouse.x,mouse.y);
  ellipse(mouse.x,mouse.y,40,40);
} 

void Fbreather(){
  
 fill(215,2189,12);
 rect(640,280,70,300);
 fill(0,190,207);
 quad(680,580,710,580,750,800,720,800);
 quad(640,580,670,580,620,800,590,800);
 fill(128,31,183);
 ellipse(675,270,125,125);
 quad(630,560,720,560,760,650,590,650);
 
 fill(249,92,0);
 ellipse(540,255,45,45);
}

void arms_stick(){
  pushMatrix();
  translate(740,400);
  rotate(radians(50));
  fill(215,2189,12);
  ellipse(0,0,240,40);
  popMatrix();
  
  pushMatrix();
  translate(570,370);
  rotate(radians(160));
  ellipse(0,0,240,40);
  popMatrix();
 
  pushMatrix();
  translate(530,250);
  rotate(radians(30));
  fill(127,89,0);
  rect(0,0,25,193);
  popMatrix();
}