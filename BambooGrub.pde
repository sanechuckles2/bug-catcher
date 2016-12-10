

class BambooGrub extends Bug {

  BambooGrub() {
    points = 20;
    yspeed = 4;
    baseJitter = 0;
    hitRadius = 100;
    damage = 1;
    type = 7;
  }
  
  void draw() {
    fill(255);
    basicDisplay();
  }
}

