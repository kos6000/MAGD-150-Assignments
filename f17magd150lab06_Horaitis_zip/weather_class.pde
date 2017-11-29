class weather_class{
 int cX1,cX2,cX3,cX4,cY1,cY2,cY3,cY4;        //this one was just to make a cloud
 
weather_class(){
   cX1 = 275;
   cX2 = 425;
   cX3 = 550;
   cX4 = 400;
   cY1 = 50;
   cY2 = 10;
   cY3 = 100;
   cY4 = 120;
 }
 
 weather_class(int _cX1, int _cX2, int _cX3, int _cX4, int _cY1, int _cY2, int _cY3, int _cY4){
   cX1 = _cX1;
   cX2 = _cX2;
   cX3 = _cX3;
   cX4 = _cX4;
   cY1 = _cY1;
   cY2 = _cY2;
   cY3 = _cY3;
   cY4 = _cY4;
 }
 
 void display(){
  fill(170);
   quad(cX1,cY1,cX2,cY2,cX3,cY3,cX4,cY4);
   cX1 = cX1 + 6;
   cX2 = cX2 + 6;
   cX3 = cX3 + 6;
   cX4 = cX4 + 6;
 }
 
 void move(){
  if(cX1 > 1100){
    cX1 = -575;
    cX2 = -425;
    cX3 = -300;
    cX4 = -450;
  }
 }
}