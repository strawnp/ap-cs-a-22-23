float tx = 0;
float ty = 10000;

float tr = 0;
float tg = 1000;
float tb = 5000;

int frames = 0;

void setup() {
  size(displayWidth, displayHeight);
  background(200);
}

void draw() {
  float r = noise(tr);
  float g = noise(tg);
  float b = noise(tb);
  
  fill(map(r, 0, 1, 0, 255), map(g, 0, 1, 0, 255), map(b, 0, 1, 0, 255), map(b, 0, 1, 50, 150));
  
  float nx = noise(tx);
  float ny = noise(ty);
  float x = map(nx, 0, 1, 0, width);
  float y = map(ny, 0, 1, 0, height);
  noStroke();
  ellipse(x, y, 40, 40);
  
  tx += 0.01;
  ty += 0.01;
  
  tr += 0.05;
  tg += 0.05;
  tb += 0.05;
  
  frames++;
  
  if (frames > 500) {
    frames = 0;
    background(200);
  }
}
