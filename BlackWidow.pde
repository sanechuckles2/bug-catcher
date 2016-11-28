

class BlackWidow extends Bug {

  BlackWidow() {
    points = 150;
    baseJitter = 10;
    yspeed = 15;
    hitRadius = 70;
    damage = 10;
  }

  void draw() {
    stroke(#000000);
    line(x, y, x+50, y+50);
    line(x, y, x-50, y-50);
    line(x, y, x+50, y-50);
    line(x, y, x-50, y+50);
    line(x, y, x+60, y);
    line(x, y, x-60, y);
    
    fill(#000000);
    ellipse(x, y, 75, 90);

    fill(#FF0000);
    ellipse(x+13, y+15, 9, 9);
    ellipse(x+13, y, 9, 9);
    ellipse(x+13, y-15, 9, 9);
    ellipse(x-13, y+15, 9, 9);
    ellipse(x-13, y, 9, 9);
    ellipse(x-13, y-15, 9, 9);
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

  int yOffset() {
    return super.yOffset();
  }
}