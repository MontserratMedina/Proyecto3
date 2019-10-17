class Nave extends Base implements Mov {
  Boolean enable;
  Nave () {
    enable = true;
  }

  void update() {
    location.add(velocity);
  }

  void checkEdges() {

  }

  void display() {
    if (enable) {

      int rR = (int)(10); 
      int rG = (int )(0);
      int rB = (int) random(0,250);

      stroke(0);
      fill(rR, rG, rB); 
      rect (mouseX, mouseY, 50, 50); 
    }
  }
}
