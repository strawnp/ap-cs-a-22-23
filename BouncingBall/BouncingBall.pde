ArrayList<Ball> balls;

void setup() {
  size(640, 360);
  balls = new ArrayList<>();
  balls.add(new Ball());
}

void draw() {
  background(175);
  for (Ball b : balls) {
    b.render();
    b.update();
  }
  println(balls.size());
  println(frameRate);
}

void mousePressed() {
  for (int i = 0; i < 100; i++) {
    balls.add(new Ball());
  }
}

void keyPressed() {
  if (key == ' ') {
    balls.add(new Ball());
  }
}
