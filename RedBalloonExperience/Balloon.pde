public class Balloon {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float mass = 1;
  
  public Balloon() {
    location = new PVector(width / 2, 3 * height / 4);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  public void applyForce(PVector force) {
    PVector f = force.copy();
    f.div(mass);
    acceleration.add(f);
  }
  
  public void update() {
    velocity.add(acceleration);
    if (velocity.y <= -1) {
      velocity.y = -1;
    }
    location.add(velocity);
    if (location.y <= 50) {
      location.y = 50;
    }
    if (location.x <= 50) {
      location.x = 50;
    } else if (location.x >= width - 50) {
      location.x = width - 50;
    }
    acceleration.mult(0);
  }
  
  public void display() {
    fill(255, 0, 0);
    ellipse(location.x, location.y, 100, 100);
    strokeWeight(4);
    line(location.x, location.y + 50, location.x, location.y + 150);
  }
}
