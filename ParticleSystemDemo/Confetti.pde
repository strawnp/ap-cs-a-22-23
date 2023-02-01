public class Confetti extends Particle {
  public Confetti(PVector l) {
    super(l);
  }
  
  // override parent display method
  public void display() {
    rectMode(CENTER);
    fill(0, 76, 84, getLifespan());
    stroke(0, getLifespan());
    rect(getLocation().x, getLocation().y, 8, 8);
  }
}
