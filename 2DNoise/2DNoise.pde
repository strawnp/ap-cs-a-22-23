void setup() {
  size(640, 360);
}

void draw() {
  loadPixels();
  
  float xoff = 0.0;
  
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    
    for (int y = 0; y < height; y++) {
      float r = map(noise(xoff, yoff), 0, 1, 90, 130);
      float g = map(noise(xoff + 0.1, yoff + 0.1), 0, 1, 150, 190);
      float b = map(noise(xoff + 0.2, yoff + 0.2), 0, 1, 0, 50);
      
      pixels[x + y * width] = color(r, g, b);
      
      yoff += 0.03;
    }
    xoff += 0.03;
  }
  
  updatePixels();
}
