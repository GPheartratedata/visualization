class Dot {
  float x;
  float y;
  float diameter;
  float dHR;
  float dVO2max;
  float dHRzone;

  float dotSize;
  float maxDiameter;
  float enlargementSpeed;
  int r;
  int g;
  int b;

  Dot(float tempHR, float tempVO2max) {
    dHR = tempHR;
    dVO2max = tempVO2max;
    r = 255;
    g = 255;
    b = 255;
    //dHRzone = tempHRzone;
    //dSpeed = tempspeed;
    dotSize = 1;
    maxDiameter = 30;
    enlargementSpeed = 0.2;
  }


//draws dot and enlargens it
  void display() {
    x = width/2;
    y = height/2;
    
    for (int i=0; i<maxDiameter; i++) {
      fill(r, g, b);
      ellipse (x, y, i*dotSize, i*dotSize);
    }
  }
  
  
  //updates dot color
  void update(float HRzone, float HR) {
    
    println(enlargementSpeed);
    dotSize = dotSize + enlargementSpeed;
    if (dotSize>=(HR/15) || dotSize<= 1.0)
      enlargementSpeed= -enlargementSpeed;
    //give color according to hr zone
    if (HRzone == 1) {
      r = 18;
      g = 221;
      b = 255;
    }
    if (HRzone == 2) {
      r = 18;
      g = 225;
      b = 47;
    }
    if (HRzone == 3) {
      r = 255;
      g = 248;
      b = 18;
    }
    if (HRzone == 4) {
      r = 255;
      g = 161;
      b = 18;
    }
    if (HRzone == 5) {
      r = 255;
      g = 50;
      b = 18;
    }
  }
}
