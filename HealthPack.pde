

class HealthPack extends Bug {

  HealthPack() {
    points = 0;
    yspeed = 6;
    baseJitter = 0;
    hitRadius = 60;
    damage = -30;
    type = 3;
  }

  void draw() {
    fill(#12CB26);
    ellipse(x, y, 80, 80);
    fill(0);
    rect(x-30, y-7.5, 57, 12, 40);
    rect(x-7.75, y-30, 12, 57, 40);
  }

}
