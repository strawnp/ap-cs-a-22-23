public class Particle {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float lifespan;
  
  public Particle(PVector l) {
    location = l.copy();
    velocity = new PVector(random(-1, 1), random(-2, 0));
    acceleration = new PVector(0, 0.05);
    lifespan = 255;
  }
  
  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2;
  }
  
  public void display() {
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(location.x, location.y, 8, 8);
  }
  
  public boolean isDead() {
    return lifespan < 0;
  }
}
