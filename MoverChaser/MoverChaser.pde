Mover m;

void setup() {
  size(displayWidth, displayHeight);
  m = new Mover();
}

void draw() {
  m.update();
  m.display();
}
