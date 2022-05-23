class Setting {
  float rectx;
  float recty;
  float diameter;
  float mousX;
  float mousY;
int fitnesslevel;
Rectangle [] rectangles = new Rectangle [5];
 
  Runningspeed runspeed;


  Setting () {
    diameter = 30;
    rectx = 50;
    recty = 50;
    for(int i =0; i<rectangles.length; i++){
    rectangles [i] = new Rectangle(rectx, 40 + i*recty, diameter);
    }
    
    runspeed = new Runningspeed();
  }

  void display () {
    for(int i =0; i<rectangles.length; i++){
    rectangles [i].display();
    }
    runspeed.display();
    
  }

 void update(float x, float y){ 
   for(int i =0; i<rectangles.length; i++){
    rectangles [i].update(x,y);
    }
   
 }
 
 void check(float x){
 runspeed.update(x);
 }
 
 
 void setlevel(){
   for(int i =0; i<rectangles.length; i++){
 if (rectangles[i].overlapping == true){
 fitnesslevel = 1;
 }
 if (rectangles[i].overlapping == true){
 fitnesslevel = 2;
 }
 }
 }
}
