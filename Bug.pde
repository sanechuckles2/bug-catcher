class Bug {
  float x = random(0+20, width-20); 
  float y = -35;
  float yspeed = 4.5;
  float randombug = random (1, 10);
  int type = 0;
  int points = 0;
  int health = 0;
  private int jitterCount = 10;
  int signValue = 1;
  int baseJitter = 10;
  float hitRadius = 120;
  boolean isHitboxVisible = true;
  boolean isCaught = false;
  int damage = 0;

  Bug() {
    jitterCount = baseJitter;
  }

  void draw() {
    fill(255);
    basicDisplay();
  }

  void displayScore() {
    int offset = 5;
    fill(0);
    textSize(20);

    if (points >= 10) {
      offset = 13;
    }

    text(this.points, x-offset, y-22);
  }

  void basicDisplay() {
    stroke(63);
    line(x, y, x+50, y+50);
    line(x, y, x-50, y-50);
    line(x, y, x+50, y-50);
    line(x, y, x-50, y+50);
    line(x, y, x+60, y);
    line(x, y, x-60, y);

    ellipse(x, y, 75, 90);

    fill(0);
    ellipse(x+13, y+15, 9, 9);
    ellipse(x+13, y, 9, 9);
    ellipse(x+13, y-15, 9, 9);
    ellipse(x-13, y+15, 9, 9);
    ellipse(x-13, y, 9, 9);
    ellipse(x-13, y-15, 9, 9);

    displayScore();
  }

  void showHitBox() {
    if ( !this.isHitboxVisible) {
      return;
    }
    println("showHitBox ", hitRadius);
    stroke(63);
    noFill();
    if (this.isCaught) {
      stroke(#77FF99);
    }
    ellipse(x, y, hitRadius*2, hitRadius*2);
  }

  int xOffset() {
    return 0;
  }

  int yOffset() {
    return int(yspeed);
  }


  final void move() {
    if (this.isCaught) {
      return;
    }

    y = y + this.yOffset();
    x = x + this.xOffset();

    y = max(-50, y);
    y = min(y, height + 50);

    x = max(0, x);
    x = min(x, width);
  }

  final void run() {
    if (y < height + 50) {
      move();
      draw();
      showHitBox();
    }
  }

  boolean shouldJitter() {
    jitterCount --;

    if (jitterCount <= 0) {
      jitterCount = baseJitter;
      return true;
    } 

    return false;
  }

  boolean isOffScreen() {

    if (y >= height + 50) {
      return true;
    }

    return false;
  }

  boolean hasCollided(Player player) {
    if (this.isCaught) {
      return false;
    }
    if (dist(x, y, player.x, player.y) < this.hitRadius) {
      player.score += this.points;
      player.health -= this.points;
      return true;
    }
    return false;
  }

  void caught() {
    this.isCaught = true;
  }
}