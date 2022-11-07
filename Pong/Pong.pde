Game g;

void setup() {
  size(960, 540);
  g = new Game();
  frameRate(60);
}

void draw() {
  g.run(1 / frameRate);
}
