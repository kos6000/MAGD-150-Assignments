class FireBreath{
  float Xposition = random(520,540);
  float Yposition = random(230,260);
  int speed = round(random(25,65));
  
  void update(){
    Xposition = Xposition - speed;
    
    if(Xposition > 2/width){
      Xposition = 520;
      Yposition = random(230,260);
   }
 }
  
  void display(){
    rect(Xposition,Yposition,speed,speed+5);
  }
}