CA c;

void setup() {
  size(displayWidth, displayHeight);
  c = new CA(displayWidth / 2);
}

void draw() {
  c.run();
}

void mousePressed() {
  
}
