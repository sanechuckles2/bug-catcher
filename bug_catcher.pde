// Making this work for GITHUB

Player myPlayer;
Bug myBug;
BugFactory factory;
PImage backgroundImage;
ArrayList<Bug> bugList;
float timer;

void setup() {
  size(1200, 700); 
  backgroundImage = loadImage("Monument_Valley_2.jpg");
  myPlayer = new Player();
  myPlayer.y = height-50;
  myPlayer.x = width/2;
  myBug = new Bug();
  bugList = new ArrayList<Bug>();
  factory = new BugFactory();
}

void draw() {
  background(157);
  image(backgroundImage, -100, -200);
  fill(255);
  myPlayer.run();
  addBug();
  for (int i=0; i < bugList.size(); i++) {
    bugList.get(i).run();
  }
  for (int i=0; i < bugList.size(); i++) {
    if(bugList.get(i).isOffScreen()) {
      bugList.remove(i);
    }
  }
}

void addBug() {
  timer = millis();
  if (timer%90 == 0) {
    ArrayList<Bug> newBugs = factory.createBugs();
    for (int i = 0; i < newBugs.size(); i ++) {
      Bug newBug = newBugs.get(i);
      bugList.add(newBug);     
      myPlayer.addToScore(newBug);
    }
    print(",", bugList.size());
  }
}