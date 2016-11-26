


class BlueBug extends Bug {

  BlueBug() {
    points = 15;
    yspeed = 3;
    baseJitter = 100;
    hitRadius = 100;
  }

  void draw() {
    fill(#0024FF);
    basicDisplay();
  }


  int yOffset() {
    float offset = random (1, 10);
    float sign = random (0, 2);

    if (shouldJitter()) {
      signValue = (sign <= 1) ? 1 : -1;
    }

    int offsetValue = int(offset);
    return signValue * offsetValue;
  }
}