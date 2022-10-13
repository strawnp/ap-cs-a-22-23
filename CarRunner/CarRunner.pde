Car c;

void setup() {
  size(1280, 360);
  c = new Car();
}

void draw() {
  background(255);
  drawLines();
  c.update();
  c.display();
  c.printInfo();
}

void keyPressed() {
  if (keyCode == LEFT || key == 'a') {
    c.decelerate();
  } else if (keyCode == RIGHT || key == 'd') {
    c.accelerate();
  } else if (key == ' ') {
    c.reset();
  }
}

void drawLines() {
  strokeWeight(8);
  line(0, height / 2 - 35, width, height / 2 - 35);
  line(0, height / 2 + 35, width, height / 2 + 35);
  strokeWeight(1);
  for (int x = 0; x < width; x += 50) {
    fill(255, 255, 0);
    rect(x, height / 2 - 5, 30, 10);
  }
}
    
