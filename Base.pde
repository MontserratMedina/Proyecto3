class Base {
  PVector location;
  PVector velocity;
  Base() {
    location = new PVector(random(width), random (height));
    velocity = new PVector(random(-8,8), random (-8,8));
  }
 
}
