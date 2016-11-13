

class SamuriBug extends Bug {

  SamuriBug() {
    points = 5;
    baseJitter = 7;
  }
  
  void draw() {
    fill(#F6FF00);
    basicDisplay();
  }

  int xOffset() {
    float offset = random (1, 10);
    float sign = random (0, 2);

    if(shouldJitter()) {
      signValue = (sign <= 1) ? 1 : -1;
    }

    int offsetValue = int(offset);
    return signValue * offsetValue;
  }

  int yOffset() {
    return super.yOffset();
  }
}