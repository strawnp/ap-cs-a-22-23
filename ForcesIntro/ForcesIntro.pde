Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw() {
  PVector gravity = new PVector(0, 0.01);
  m.applyForce(gravity);
  m.update();
  m.display();
}

void keyPressed() {
  if (key == ' ' ) {
    m.applyForce(new PVector(0, -1.5));
  }
}
