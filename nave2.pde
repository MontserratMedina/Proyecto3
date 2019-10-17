class Nave2 extends Base implements Mov {
  Boolean enable;
  Nave2 () {
    enable=true;
  }


  void update() {
    location.add(velocity);
  }


  void checkEdges() {
    if (location.x > width) {
      location.x=0;
    } else if (location.x < 0) {

      location.x = width;
    }

    if (location.y > height) {
      location.y=0;
    } else if (location.y < 0) {

      location.y = height;
    }
  }

  void display() {
    if (enable) {
    int rR = (int)(150);
    int rG = (int) (20);
    int rB = (int) random(0,155);

    stroke(0);
    fill(rR, rG, rB);
   ellipse(location.x, location.y, 50, 50); 
  }
  }
}
