CA c;

void setup() {
  size(displayWidth, displayHeight);
  c = new CA(displayHeight / 8, displayWidth / 8);
  frameRate(5);
}

void draw() {
  c.run();
}
