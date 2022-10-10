Mover m;

void setup() {
  size(720, 360);
  m = new Mover();
}

void draw() {
  background(175);
  m.update();
  m.checkEdges();
  m.display();
}
