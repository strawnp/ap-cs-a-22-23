Walker w;

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  w = new Walker();
}

void draw() {
  w.display();
  w.step();
}
