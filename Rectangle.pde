class Rectangle {
  float rectx;
  float recty;
  float rectdiam;
  color col;
  float r;
  float g;
  float b;
  boolean overlapping;

  Rectangle(float tempx, float tempy, float tempdiam) {
    rectx= tempx;
    recty = tempy;
    rectdiam = tempdiam;
    r = 200;
    g = 235;
    b = 245;
    col = color(200, 235, 245);
  }

  void display() {
    fill(col);
    stroke(col);
    rectMode(CORNER);
    rect(rectx, recty, rectdiam, rectdiam);
  }

  void update(float x, float y) {
    
    if (x >= rectx && x <= rectx + rectdiam && y >= recty && y <= recty + rectdiam) {
      changeColor(true);
    } else {
      changeColor(false);
    }
    
  }
  void changeColor(boolean overlaps) {
    overlapping = overlaps;
    if (overlapping) {
      col = color(0);
    } else {
      col = color(200, 235, 245);
    }
  }
}
