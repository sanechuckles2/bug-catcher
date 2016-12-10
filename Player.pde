
class Player {
  float x = 400;
  float y = 750;
  int xspeed = 7;
  int score = 0;
  final float maxHealth = 75;
  float health = maxHealth;
  boolean gameOver = false;


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

  float changeHealth(float by) {
    this.health += by;
    if (this.health < 0) {
      this.health = 0;
    } 
    if (this.health > this.maxHealth) {
      this.health = this.maxHealth;
    }
    return this.health;
  }

  void gameover() {
    if (health <= 0) {
      gameOver = true;
    }
    if (gameOver == true) {
      stroke(#000000);
      textSize(100);
      fill(#000000);
      text("GAME OVER", 250, 300);
      text("your score", 200, 400);
      text(score, 710, 400);
    }
  }

  void healthchange() {
    if (health >= 55) {
      fill(#00FF2C);
      rect(x+40, y-50, 10, health, 10);
    } 
    else
      if (health >= 33) {
        fill(#FF811A);
        rect(x+40, y-50, 10, health, 10);
      } 
      else
        if (health >= 0) {
          fill(#D31A1A);
          rect(x+40, y-50, 10, health, 10);
        }
    if (testBugs == true) {
      if (keyPressed) {
        if (key == 'p') {
          health = this.changeHealth(-1);
        }
      }
      if (keyPressed) {
        if (key == 'o') {
          health = this.changeHealth(1);
        }
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

  void displayScore() {
    int offset = 5;
    fill(0);
    textSize(20);

    if (score >= 10) {
      offset = 13;
    } 
    else if (score >= 100) {
      offset = 26;
    } 
    else if (score >= 1000) {
      offset = 39;
    }


    text(this.score, x-offset, y+10);
  }

  void run() {
    move();
    display();
    displayScore();
    healthbar();
    healthchange();
    gameover();
  }

  boolean hasCollided(Bug withBug) {
    if (dist(x, y, withBug.x, withBug.y) < (35 + 35)) {
      this.score += withBug.points;
      this.health = this.changeHealth(-withBug.damage);
      if(withBug.type == 7) {
       xspeed = xspeed * -1;
       print("invertedcontrols");
      }
      return true;
    }
    return false;
  }
}

