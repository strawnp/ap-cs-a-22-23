int rad = 600;

void setup() {
  size(1000, 600);
  background(255);
}

void draw() {
  background(255);
  drawCircle(width / 2, height / 2, rad);
}

void drawCircle(int x, int y, int r) {
  noFill();
  stroke(0);
  ellipse(x, y, r, r);
  if (r > 2) {
    drawCircle(x - r / 2, y, r / 2);
    drawCircle(x + r / 2, y, r / 2);
    //drawCircle(x, y - r / 2, r / 2);
    //drawCircle(x, y + r / 2, r / 2);
  }
}
