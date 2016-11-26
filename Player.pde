class Player {
  float x = 400;
  float y = 750;
  int xspeed = 7;
  boolean invertedcontrols = false;
  int score = 0;
  float health = 75;

  void display() {
    stroke(0);
    fill(255);
    ellipse(x, y, 75, 75);
    ellipse(x, y-35, 50, 50);
    rect(x-15, y-30, 30, 10, 25);
    ellipse(x-10, y-40, 15, 15);
    ellipse(x+10, y-40, 15, 15);
    ellipse(x+10, y-43, 2, 2);
    ellipse(x-10, y-43, 2, 2);
  }

  void healthbar() {
    noFill();
    rect(x+40, y-50, 10, 75, 10);
  }

  void healthchange() {
    if (health >= 55) {
      fill(#00FF2C);
      rect(x+40, y-50, 10, health, 10);
    } else
      if (health >= 33) {
        fill(#FF811A);
        rect(x+40, y-50, 10, health, 10);
      } else
        if (health >= 0) {
          fill(#D31A1A);
          rect(x+40, y-50, 10, health, 10);
        }
    if (keyPressed) {
      if (key == 'p') {
        health = health -1;
      }
    }
  }

  void move() {
    if (keyPressed == true) {
      if (key == 'a' || keyCode == LEFT) {
        x = x - xspeed;
      }
    }
    if (keyPressed == true) {
      if (key == 'd' || keyCode == RIGHT) {
        x = x + xspeed;
      }
    }
  }

  void invertcontrols() {
    if (invertedcontrols == true) {
      xspeed = xspeed * -1;
    }
  }

  void displayScore() {
    int offset = 5;
    fill(0);
    textSize(20);

    if (score >= 10) {
      offset = 13;
    } else if (score >= 100) {
      offset = 26;
    } else if (score >= 1000) {
      offset = 39;
    }


    text(this.score, x-offset, y+10);
  }

  void run() {
    move();
    display();
    invertcontrols();
    displayScore();
    healthbar();
    healthchange();
  }

  boolean hasCollided(Bug withBug) {
    if (dist(x, y, withBug.x, withBug.y) < (35 + 35)) {
      this.score += withBug.points;
      this.health -= withBug.damage;
      return true;
    }
    return false;
  }
}