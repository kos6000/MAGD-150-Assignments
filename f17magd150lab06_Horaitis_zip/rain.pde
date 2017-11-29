class rain{
  float lineX = random(width);
  float lineY = random(-200,-50);
  float fallSpeed = random(4,14);   //the variables right here
  
  void falling(){
    lineY = lineY + fallSpeed;
                                      //the rain drop Y axis is equal to itself times a random speed
    if (lineY > height){              //and when it hits the bottom it resets
      lineY = random(-200,-50);
    }
  }
  
  void looks(){
    stroke(0,221,255);
    line(lineX,lineY,lineX,lineY+10);
  }
}