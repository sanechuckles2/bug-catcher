
class BugFactory {

  BugFactory() {
  }

  ArrayList<Bug> createTestBugs() {
    ArrayList<Bug> bugList = new ArrayList<Bug>();
    Bug newBug = new Bug();
    bugList.add(newBug);
    newBug = new SamuriBug();
    bugList.add(newBug);
    newBug = new BlueBug();
    bugList.add(newBug);
    newBug = new HealthPack();
    bugList.add(newBug);
    newBug = new BlackWidow();
    bugList.add(newBug);
    newBug = new FireAnt();
    bugList.add(newBug);
    newBug = new Bettle();
    bugList.add(newBug);
    return bugList;
  }

  ArrayList<Bug> createBugs() {
    float randombug = random (1, 10);
    Bug newBug = new Bug();

    ArrayList<Bug> bugList = new ArrayList<Bug>();

    if (randombug >= 0 && randombug < 3.5) {
      newBug = new SamuriBug();
      bugList.add(newBug);
    } 
    else if (randombug >= 3.5 && randombug < 4.5) {
      newBug = new BlueBug();
      bugList.add(newBug);
    } 
    else if (randombug >= 4.5 && randombug < 5) {
      newBug = new HealthPack();
      bugList.add(newBug);
    } 
    else if (randombug >= 5 && randombug < 6.5) {
      newBug = new SamuriBug();
      bugList.add(newBug);
      newBug = new SamuriBug();
      bugList.add(newBug);
      newBug = new SamuriBug();
      bugList.add(newBug);
      newBug = new SamuriBug();
      bugList.add(newBug);
    } 
    else if (randombug >= 6.5 && randombug < 8) {
      newBug = new SamuriBug();
      bugList.add(newBug);
      newBug = new BlueBug();
      bugList.add(newBug);
      newBug = new SamuriBug();
      bugList.add(newBug);
    } 
    else if (randombug >= 8 && randombug < 9) {
      newBug = new BlueBug();
      bugList.add(newBug);
      newBug = new SamuriBug();
      bugList.add(newBug);
    } 
    else if (randombug >= 9 && randombug < 9.25) {
      for (int i = 0; i < 8; i ++) {
        newBug = new FireAnt();
        bugList.add(newBug);
      }
      newBug = new BlackWidow();
      bugList.add(newBug);
    } 
    else if (randombug >= 9.25 && randombug < 10) {
      newBug = new BlackWidow();
      bugList.add(newBug);
    }

    return bugList;
  }
}

