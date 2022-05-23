class Runningspeed{
float sliderx;
float slidery;
float barlength;
  Runningspeed(){
  sliderx = (width/2);
  slidery = (height/15)*14;
  barlength = 600;
  }
  
  void display(){
    //bar
    fill(45,196,89);
    noStroke();
    rectMode(CENTER);
  rect(width/2, (height/15)*14, barlength, barlength/60);
  
  //slider
  fill(31,73,43);
  rectMode(CENTER);
  rect(sliderx, slidery, barlength/60, 15);
  
  
  
  }
  
  float runningspeed(float currentx){
  float currentspeed; 
  if (currentx < 400 && currentx >= 350 ){
  currentspeed = 4;
  } 
  else if (currentx < 450 && currentx >= 400 ){
  currentspeed = 5;
  }
  else if (currentx < 500 && currentx >= 450 ){
  currentspeed = 6;
  }
  else if (currentx < 550 && currentx >= 500 ){
  currentspeed = 7;
  }
  else if (currentx < 600 && currentx >= 550 ){
  currentspeed = 8;
  }
  else if (currentx < 650 && currentx >= 600 ){
  currentspeed = 9;
  }
  else if (currentx < 700 && currentx >= 650 ){
  currentspeed = 10;
  }
  else if (currentx < 750 && currentx >= 700 ){
  currentspeed = 11;
  }
  else if (currentx < 800 && currentx >= 750 ){
  currentspeed = 12;
  }
  else if (currentx < 850 && currentx >= 800 ){
  currentspeed = 13;
  }
  else if (currentx < 900 && currentx >= 850 ){
  currentspeed = 14;
  }
  else {
  currentspeed = 15;
  }
  return currentspeed;
  }
  

  void update(float x){
  sliderx = x;
  if (sliderx < (width/2) - (barlength/2)){
  sliderx = (width/2) - (barlength/2);
  }
  if (sliderx > (width/2) + (barlength/2)){
  sliderx = (width/2) + (barlength/2);
  }
  }
  
}
