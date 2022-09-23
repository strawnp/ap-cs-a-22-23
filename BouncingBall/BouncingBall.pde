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
}
