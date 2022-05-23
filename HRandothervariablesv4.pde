float HR = 50;
float VO2max = 20;
float speed = 5;
int RPE = 2;
int HRzone = 5;
float diameter = 0;
float xpos = 0;
float ypos = 0;


Logic dot;


void setup() {
  size(1300, 900);

  dot = new Logic(HR, VO2max, HRzone, speed);

}

void draw() {

  background(134, 225, 229);
  dot.display(mouseX,mouseY);
  dot.update();
  
  
}

void mouseDragged(){
dot.mouseisDragged(mouseX);
}

void keyPressed() {
  //if (key == CODED) {
  //  dot.update();
  //  if (keyCode == UP) {
  //    dot.keyPressUp();
  //  }
  //  if (keyCode == DOWN) {
  //    dot.keyPressDown();
  //  }
  //}
}
