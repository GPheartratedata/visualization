
class Logic {
  float lSpeed;
  float lHR;
  float lVO2max;
  int lHRzone;
  float lHRmax;
  int amount = 1;
Dot [] dots = new Dot[amount];
  //Dot d;
  Setting setting;

  Logic (float tempHR, float tempVO2max, int tempHRzone, float tempSpeed) {
    lSpeed = tempSpeed;
    lHR = tempHR;
    lVO2max = tempVO2max;
    lHRzone = tempHRzone;
    //d = new Dot(lHR, lVO2max, lHRzone, lSpeed);
    setting = new Setting();
    for (int i = 0; i <dots.length; i++){
    dots [i] = new Dot(lHR, lVO2max);
    }
  }
  
  
  void display(float x, float y) {
    //calculating HR with dummy variable
     for (int i = 0; i <dots.length; i++){
    dots[i].display();
    }
    //d.display();
    setting.display();
    setting.update(x, y);
    setting.setlevel();
  }
  

  void update() {
    float HR = calculateHR(50, setting.runspeed.runningspeed(setting.runspeed.sliderx));
    float HRzone = calculateHRzone(230, HR);
    for (int i = 0; i <dots.length; i++){
    dots[i].update(HRzone, HR);
    }
    //d.update(HRzone, HR);
  }
  

  void mouseisDragged(float x) {
    setting.check(x);
  }


  float calculateHR(float HRrest, float workload) {
    float newHR = HRrest + 3.5*sqrt((120*workload));
    return newHR;
  }
  
  
  float calculateHRzone(float HRmax, float HR) {
    float newHRzone;
    if ((HR/HRmax)*100 < 60) {
      newHRzone = 1;
    } else if ((HR/HRmax)*100 < 70 && (HR/HRmax)*100 > 60) {
      newHRzone = 2;
    } else if ((HR/HRmax)*100 < 80 && (HR/HRmax)*100 > 70) {
      newHRzone = 3;
    } else if ((HR/HRmax)*100 < 90 && (HR/HRmax)*100 > 80) {
      newHRzone = 4;
    } else if ((HR/HRmax)*100 > 90) {
      newHRzone = 5;
    } else {
      newHRzone = 1;
    }
    return newHRzone;
  }


  void keyPressDown() {
   
  }


  void keyPressUp() {
  }
}
