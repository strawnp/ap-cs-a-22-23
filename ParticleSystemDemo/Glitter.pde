public class Glitter extends Particle {
  public Glitter(PVector l) {
    super(l);
  }
  
  // override parent display method
  public void display() {
    rectMode(CENTER);
    fill(186, 202, 211);
    stroke(0);
    float x = getLocation().x;
    float y = getLocation().y;
    triangle(x, y, x + 8, y, x + 4, y + 8);
  }
}
