public class SpinningConfetti extends Confetti {
  public SpinningConfetti(PVector l) {
    super(l);
  }
  
  // override parent display method
  public void display() {
    float theta = map(getLocation().x, 0, width, 0, TWO_PI * 2);
    
    rectMode(CENTER);
    fill(0, getLifespan());
    stroke(0, getLifespan());
    
    pushMatrix();
    translate(getLocation().x, getLocation().y);
    rotate(theta);
    rect(0, 0, 8, 8);
    popMatrix();
  }
}
