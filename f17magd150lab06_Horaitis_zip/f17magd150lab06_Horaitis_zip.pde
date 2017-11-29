weather_class cloud;
weather_class cloud2;
rain[] drops = new rain[75];

void setup(){
  size(1000,800);
  colorMode(RGB,255,255,255,100);
  for(int i = 0; i < drops.length; i++) {    //the loop right here for making the drops continue
   drops[i] = new rain();
  }
  cloud = new weather_class();
}

void draw(){
  background(115);
  fill(169,104,54);
  rect(0,730,1000,300);
  house();                      //then just making a house
  for(int i = 0; i < drops.length; i++) {
   drops[i].looks();
   drops[i].falling();
  }
  cloud.display();
  cloud.move();                //the cloud functions
}

void house(){
  fill(99,73,0);
  rect(200,530,150,200);
  fill(48,36,0);
  triangle(140,530,270,380,400,530);
}