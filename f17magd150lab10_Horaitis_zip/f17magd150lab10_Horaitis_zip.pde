PImage img;

float eyeX;

float pv1, pv2, pv3, px, py, pz, px2, py2, pz2;
int pRate;

void setup() {
  size(1200,800, P3D);
  surface.setTitle("3D Objects");
  img = loadImage("dirt.png");
  textureMode(NORMAL);
  
  eyeX = width/2;
  
  pv1 = random(0, 156);
  pv2 = random(0, 156);
  pv3 = random(0, 156);
  px = random(0,width);
  py = random(0,height);
  pz = 0;

  
  pRate = 50;
}

void draw() {
   background(10);
  
  camera(eyeX, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  pointLight(pv1, pv2, pv3, px, py, pz);
  directionalLight(255,255,255,1000,0,5);
  
  //Draw Sphere
  pushMatrix();
  translate(700,400,0);
  noStroke();
  fill(255);
  sphere(200);
  popMatrix();
  
  //Draw Cube
  pushMatrix();
  translate(200,height/2,0);
  textureCube(img);
  popMatrix();
  
  if(key ==CODED){
   if(keyCode==RIGHT){  //rotates the camera on the x axis (sorry it's so dark)
   eyeX +=10;           //when presing left or right
   }
   if(keyCode==LEFT){
   eyeX -=10;
   }
  }
  
  if (mousePressed){            //Whenever the mouse is held down, the pv value is
   if (pv1 < 156){              // changed at a certain rate 
     pv1 += 1;
   } else {
     pv1 = 0;
   }
   
   if (pv2 < 156){
     pv2 += 2;
   } else {
     pv2 = 0;
   }
   
   if (pv3 < 156){
     pv3 += .5;
   } else {
     pv3 = 0;  
   }
  }

  if(frameCount % pRate == 0) {
    
    px2 = random(0, width);          //Every 50 frames (so every 5/6 of a second 
    py2 = random(0, height);         // because it is 60 fps) the light
    pz2 = random(-5.0, 5.0);          // is changed to a different area

  }
    
    px = lerp(px, px2, 0.05);
    py = lerp(py, py2, 0.05);
    pz = lerp(pz, pz2, 0.05);
    
}

void textureCube(PImage img){
  beginShape(QUADS);
  texture(img);
  scale(70);
  
  //+Z front face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z back face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y bottom face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y top face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X right face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X left face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  endShape();
}