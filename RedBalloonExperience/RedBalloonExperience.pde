Balloon b;
float t = 0;

void setup() {
  size(640, 640);
  b = new Balloon();
}

void draw() {
  background(200);
  PVector gravity = new PVector(0, 0.01);
  PVector lift = new PVector(0, -0.015);
  b.applyForce(gravity);
  b.applyForce(lift);
  generateWind();
  b.update();
  b.display();
}

void generateWind() {
  float n = noise(t);
  float w = map(n, 0, 1, 0, 0.04);
  
  w -= 0.02;
  
  PVector wind = new PVector(w, 0);
  b.applyForce(wind);
  
  t += 0.1;
}

//void keyPressed() {
//  if (key == ' ') {
//    PVector wind = new PVector(0.02, 0);
//    b.applyForce(wind);
//  }
//}
