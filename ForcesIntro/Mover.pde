public class Mover {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float mass;
  
  public Mover() {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = 10.0;
  }
  
  public void applyForce(PVector force) {
    force.div(mass);
    acceleration.add(force);
  }
  
  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  public void display() {
    ellipse(location.x, location.y, 50, 50);
  }
}
