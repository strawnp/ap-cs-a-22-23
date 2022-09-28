float tx = 0;
float ty = 10000;

void setup() {
  size(640, 360);
}

void draw() {
  background(200);
  float nx = noise(tx);
  float ny = noise(ty);
  
  float x = map(nx, 0, 1, 0, width);
  float y = map(ny, 0, 1, 0, height);
  float w = map(nx, 0, 1, 25, 75);
  float h = map(ny, 0, 1, 25, 75);
  
  ellipse(x, y, w, h);
  
  tx += 0.01;
  ty += 0.01;
}
