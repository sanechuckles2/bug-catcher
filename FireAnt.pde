


class FireAnt extends Bug {

  FireAnt() {
    points = -40; 
    yspeed = 1;
    baseJitter = 10;
    hitRadius = 70;
    damage = 20;
  }

  void draw() {
    stroke(0);
    line(x-15, y-10, x+15, y-10);
    line(x-15, y, x+15, y);
    line(x-15, y+10, x+15, y+10);
    stroke(#BC0000);
    fill(#BC0000);
    ellipse(x, y-9, 10, 10);
    ellipse(x, y, 10, 10);
    ellipse(x, y+9, 10, 10);
  }


  int xOffset() {
    float offset = random (1, 10);
    float sign = random (0, 2);



    if (shouldJitter()) {
      signValue = (sign <= 1) ? 1 : -1;
    }

    int offsetValue = int(offset);
    return signValue * offsetValue;
  }

}