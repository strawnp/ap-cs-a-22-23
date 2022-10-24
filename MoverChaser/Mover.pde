public class Mover {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float topspeed = 15;
  
  public Mover() {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  public void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    
    // 1. compute direction to travel in towards mouse
    PVector dir = PVector.sub(mouse, location);
    
    stroke(random(256), random(256), random(256));
    line(mouseX, mouseY, location.x, location.y);

    // 2. normalize that direction vector
    dir.normalize();
    
    // 3. scale the normalized vector
    dir.mult(random(0, 1));
    
    // 4. accelerate towards mouse
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  
  public void display() {
        fill(random(256), random(256), random(256));

    ellipse(location.x, location.y, 40, 40);
  }
}
