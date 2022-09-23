Random generator;

void setup() {
  size(640, 360);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  fill(255, 10);
  ellipse(x, 180, 16, 16);
}
