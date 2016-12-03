

class Bettle extends Bug {

  Bettle() {
    points = -20;
    baseJitter = 10;
    hitRadius = 150;
    damage = 50;
    yspeed = 1.5;
  }

  void draw() {
    stroke(63);
    line(x, y, x+100, y+100);
    line(x, y, x-100, y-100);
    line(x, y, x+100, y-100);
    line(x, y, x-100, y+100);
    line(x, y, x+110, y);
    line(x, y, x-110, y);

    fill(#480F0F);
    ellipse(x, y, 150, 165);

    fill(0);
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

