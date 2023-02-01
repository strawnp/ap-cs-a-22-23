// runner file
ArrayList<ParticleSystem> ps;

void setup() {
  size(640, 360);
  ps = new ArrayList<>();
  
  ps.add(new ParticleSystem());
}

void draw() {
  background(255);
  
  for (ParticleSystem p : ps) {
    p.run();
  }
}

void mousePressed() {
  // ps.remove(0);
  ps.add(new ParticleSystem(new PVector(mouseX, mouseY)));
}
